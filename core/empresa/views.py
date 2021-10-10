from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http.response import HttpResponseRedirect
from django.shortcuts import redirect, render
from django.urls.base import reverse, reverse_lazy
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView, DeleteView
import requests
from empresa.forms import EmpresaForm
from empresa.models import Empresa, Invitaciones, PaisEstadoCiudad
from django.views.generic import ListView, UpdateView
from django.contrib.auth.mixins import LoginRequiredMixin

# Cargar Pais, Estados y Ciudades
def json_load(request):
    data = requests.get('https://pkgstore.datahub.io/core/world-cities/world-cities_json/data/5b3dd46ad10990bca47b04b4739a02ba/world-cities_json.json')
    my_dict = data.json()  
    data = [] 
    for i in range(0, len(my_dict)):
        if my_dict[i]['country'] != None and my_dict[i]['subcountry'] != None:
            if my_dict[i]['country']+", "+my_dict[i]['subcountry'] not in data:
                data.append(my_dict[i]['country']+", "+my_dict[i]['subcountry'])
                PaisEstadoCiudad.objects.create(nombre = my_dict[i]['country']+", "+my_dict[i]['subcountry']+ ", "+my_dict[i]['name'])
        else:
            if my_dict[i]['country']+", "+my_dict[i]['name'] not in data:
                data.append(my_dict[i]['country']+", "+ my_dict[i]['name'])
                PaisEstadoCiudad.objects.create(nombre = my_dict[i]['country']+", "+ my_dict[i]['name'])        
    return redirect('home')

#Crear Empresa
@login_required
def CreateEmpresa(request):
    if request.method == 'POST':
        form = EmpresaForm(request.POST) 
        if form.is_valid():
            #si el formulario es valido añadirle el usuario que creo la empresa
            empresa = form.save(commit=False)
            datapais = form.cleaned_data.get('paisestadociudad')
            empresa.paisestadociudad = PaisEstadoCiudad.objects.get(nombre = datapais)
            empresa.user = request.user
            empresa.save()
            return HttpResponseRedirect(reverse('empresa:create-empresa'))

    else:
        form = EmpresaForm()
    context = {
        'form':form,
        'PaisData': PaisEstadoCiudad.objects.all(),
    }

    return render(request, 'empresa/create_empresa.html', context)

#Listar Empresa
class ListEmpresa(LoginRequiredMixin, ListView):
    model = Empresa
    template_name = "empresa/list_empresa.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context["object"] = Empresa.objects.filter(user=self.request.user) 
        
        return context

#Editar Empresa
class UpdateEmpresa(LoginRequiredMixin, UpdateView):
    model = Empresa
    form_class = EmpresaForm
    template_name = "empresa/update_empresa.html"
    success_url = reverse_lazy("empresa:list-empresa")
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["PaisData"] = PaisEstadoCiudad.objects.all() 
        return context
    
    def form_valid(self, form):
        empresa = form.save()
        datapais = form.cleaned_data.get('paisestadociudad')
        empresa.paisestadociudad = PaisEstadoCiudad.objects.get(nombre = datapais)
        empresa.save()
        return super().form_valid(form)

    #Verificamos si el usuario que quiere editar este objeto es al mismo al que le pertenece
    def dispatch(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            empresa = Empresa.objects.get(pk = kwargs['pk'])
            if empresa.user == request.user:
                return super().dispatch(request, *args, **kwargs)
        return redirect('Home')

#Eliminar Empresa
class DeleteEmpresa(LoginRequiredMixin, DeleteView):
    model= Empresa
    template_name = "empresa/delete_empresa.html"
    success_url = reverse_lazy("empresa:list-empresa")

    #Verificamos si el usuario que quiere Eliminar este objeto es al mismo al que le pertenece
    def dispatch(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            empresa = Empresa.objects.get(pk = kwargs['pk'])
            if empresa.user == request.user:
                return super().dispatch(request, *args, **kwargs)
        return redirect('Home')

class ListUsuarios(LoginRequiredMixin, ListView):
    model = Invitaciones
    template_name = 'empresa/list_usuarios.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        try:
            empresa = Empresa.objects.get(user = self.request.user)
        except:
            empresa = None
        context["empresa"] =  empresa
        return context
    

class CreateInvitaciones(LoginRequiredMixin, DetailView):
    model = Invitaciones
    template_name = "empresa/list_usuarios.html"

    def get(self, request, *args, **kwargs):
        empresa = Empresa.objects.filter(user = request.user).first()
        invitado = User.objects.get(username = kwargs['user'])

        invitacion = Invitaciones.objects.get(user = invitado)
        print(invitacion)
        print(empresa)
        invitacion.empresa = empresa
        invitacion.save()
        return redirect('empresa:list-usuario') 
