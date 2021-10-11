from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http.response import HttpResponseRedirect
from django.shortcuts import redirect, render
from django.urls.base import reverse, reverse_lazy
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView, DeleteView
import requests
from empresa.forms import ContanctosEmpresaForm, EmpresaClienteForm, EmpresaForm
from empresa.models import ContanctosEmpresa, Empresa, EmpresaCliente, Invitaciones, PaisEstadoCiudad
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

"""  CRUD CREACION DE LA EMPRESA (PROPIETARIA)  """

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
            return HttpResponseRedirect(reverse('empresa:list-empresa'))

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

#Listar Los usuarios
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


"""  CRUD DE INVITACIONES A LA EMPRESA (PROPIETARIA)  """
#Crear invitaciones
class CreateInvitaciones(LoginRequiredMixin, DetailView):
    model = Invitaciones

    def get(self, request, *args, **kwargs):
        empresa = Empresa.objects.filter(user = request.user).first()
        invitado = User.objects.get(username = kwargs['user'])

        invitacion = Invitaciones.objects.get(user = invitado)
        invitacion.empresa = empresa
        invitacion.save()
        return redirect('empresa:list-usuario') 

#Listar las invitaciones que tiene de alguna empresa
class ListInvitaciones(LoginRequiredMixin, ListView):
    model = Invitaciones
    template_name = "empresa/list_invitaciones.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["invitaciones"] =  Invitaciones.objects.filter(user = self.request.user)
        return context

#Aceptar invitaciones de las empresas
class AceptarInvitacion(LoginRequiredMixin, DetailView):
    model = Invitaciones

    def get(self, request, *args, **kwargs):
        #actualizacion del estado de la invitacion
        invitado = User.objects.get(username = kwargs['user'])
        invitacion = Invitaciones.objects.get(user = invitado)
        invitacion.estado = "Aceptada"
        invitacion.save()
        #agregando el usuario a la empresa
        empresa = Empresa.objects.get(nombre = invitacion.empresa)
        empresa.usuarios.add(invitado)
        empresa.save()
        return redirect('empresa:list-empresa') 

#Rechazar Invitaciones de las empresas
class RechazarInvitacion(LoginRequiredMixin, DetailView):
    model = Invitaciones

    def get(self, request, *args, **kwargs):
        #actualizacion del estado de la invitacion
        invitado = User.objects.get(username = kwargs['user'])
        invitacion = Invitaciones.objects.get(user = invitado)
        invitacion.estado = "Espera"
        invitacion.empresa = None
        invitacion.save()
        return redirect('empresa:list-empresa')

#Eliminar usuarios invitados a la empresa
class DeleteUsuarioInvitado(LoginRequiredMixin, DetailView):
    model = Empresa 

    def get(self, request, *args, **kwargs):
        invitado = User.objects.get(username = kwargs['user'])
        #agregando el usuario a la empresa
        empresa = Empresa.objects.get(user = self.request.user)
        empresa.usuarios.remove(invitado)

        return redirect('empresa:list-empresa') 


""" CRUD DE LA EMPRESA CLIETNE  """

#Creacion de la Empresa Cliente
def CreateEmpresaCliente(request):
    if request.method == 'POST':
        form = EmpresaClienteForm(request.POST) 
        if form.is_valid():
            #si el formulario es valido añadirle el usuario que creo la empresa
            empresa = form.save(commit=False)
            datapais = form.cleaned_data.get('paisestadociudad')
            empresa.paisestadociudad = PaisEstadoCiudad.objects.get(nombre = datapais)
            empresa.save()
            return HttpResponseRedirect(reverse('empresa:list-empresa'))

    else:
        form = EmpresaClienteForm()
    context = {
        'form':form,
        'PaisData': PaisEstadoCiudad.objects.all(),
    }

    return render(request, 'empresa/create_empresa_cliente.html', context)

#Listar Empresa Cliente
class ListEmpresaCliente(LoginRequiredMixin, ListView):
    model = EmpresaCliente
    template_name = "empresa/list_empresa_cliente.html"

#Eliminar Empresa Cliente
class DeleteEmpresaCliente(LoginRequiredMixin, DeleteView):
    model= EmpresaCliente
    template_name = "empresa/delete_empresa_cliente.html"
    success_url = reverse_lazy("empresa:list-empresa-cliente")

#Editar Empresa Cliente
class UpdateEmpresaCliente(LoginRequiredMixin, UpdateView):
    model = EmpresaCliente
    form_class = EmpresaClienteForm
    template_name = "empresa/update_empresa_cliente.html"
    success_url = reverse_lazy("empresa:list-empresa-cliente")
    
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



"""  CRUD DE CONTACTOS DE LA EMPRESA CLIENTE  """

#Creacion de contacto y agragarlos a el empres cliente
class CreateContactoEmpresa(LoginRequiredMixin, CreateView):
    model = ContanctosEmpresa
    form_class = ContanctosEmpresaForm
    template_name = "empresa/create_contacto_empresa.html"
    success_url = reverse_lazy("empresa:list-empresa-cliente")

    def form_valid(self, form):
        contacto = form.save()
        empresa = EmpresaCliente.objects.get(id = self.kwargs['pk'])
        contacto.empresa = empresa
        contacto.save()
        empresa.contacto.add(contacto)
        empresa.save()
        return super().form_valid(form)

#Eliminar Contacto de la empresa 
class DeleteContactoEmpresa(LoginRequiredMixin, DetailView):
    model = ContanctosEmpresa 

    def get(self, request, *args, **kwargs):
        contacto = ContanctosEmpresa.objects.get(pk = kwargs['pk'])
        contacto.delete()
        return redirect('empresa:list-empresa-cliente') 

#Listar Contactos de la empresa
class ListContactoEmpresa(LoginRequiredMixin, ListView):
    model = ContanctosEmpresa
    template_name = "empresa/list_contacto_empresa.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        empresa = EmpresaCliente.objects.get(pk = self.kwargs['pk'])
        context["contacto"] =  ContanctosEmpresa.objects.filter(empresa = empresa)
        context["empresa"] = empresa
        return context

class UpdateContactoEmpresa(LoginRequiredMixin, UpdateView):
    model = ContanctosEmpresa
    form_class = ContanctosEmpresaForm
    template_name = "empresa/update_contacto_empresa.html"
    success_url = reverse_lazy("empresa:list-empresa-cliente")