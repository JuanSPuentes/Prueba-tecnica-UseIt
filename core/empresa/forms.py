from django import forms
from phonenumber_field.formfields import PhoneNumberField
from empresa.models import Empresa, PaisEstadoCiudad

class EmpresaForm(forms.ModelForm):
    nit = forms.CharField(widget=forms.TextInput(attrs={'class':'border rounded-0 form-control text-dark', 'placeholder':'800.197.268-4'}), required=True, max_length=13)
    nombre = forms.CharField(widget=forms.TextInput(attrs={'class':'border rounded-0 form-control text-dark'}), required=True)
    nombre_comercial = forms.CharField(widget=forms.TextInput(attrs={'class':'border rounded-0 form-control text-dark'}), required=True)
    direccion = forms.CharField(widget=forms.TextInput(attrs={'class':'border rounded-0 form-control text-dark'}), required=True)
    paisestadociudad = forms.CharField(widget=forms.TextInput)
    email = forms.CharField(widget=forms.EmailInput(attrs={'class':'border rounded-0 form-control text-dark', 'placeholder':'correo@correo.com'}), required=True)
    web = forms.CharField(widget=forms.URLInput(attrs={'class':'border rounded-0 form-control text-dark'}), required=True)
    telefono = PhoneNumberField(widget=forms.TextInput(attrs={'class':'border rounded-0 form-control text-dark', 'placeholder':'+573103218350'}), required=True)
    
    class Meta:
        model = Empresa
        fields = ('nit', 'nombre', 'nombre_comercial', 'direccion', 'telefono', 'email', 'web')

    def clean_email(self):
        email = self.cleaned_data.get("email")
        if 'email' in self.changed_data:
            if Empresa.objects.filter(email__iexact=email).exists():
                raise forms.ValidationError("El email ya esta registrado")
        return email
    
    def clean_nit(self):
        nit = self.cleaned_data.get("nit")
        if 'nit' in self.changed_data:
            if Empresa.objects.filter(nit__iexact=nit).exists():
                raise forms.ValidationError("El nit ya esta registrado")
        return nit

    def clean_paisestadociudad(self):
        paisestadociudad = self.cleaned_data.get("paisestadociudad")
        if 'paisestadociudad' in self.changed_data:
            try:
                PaisEstadoCiudad.objects.get(nombre__iexact=paisestadociudad).exists()
                return paisestadociudad
            except:
                raise forms.ValidationError("Elige una opcion correcta")

        return paisestadociudad