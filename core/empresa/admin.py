from django.contrib import admin
from .models import Empresa, PaisEstadoCiudad
# Register your models here.
admin.site.register(PaisEstadoCiudad)

class AdminEmpresa(admin.ModelAdmin):
    list_display = ('user', 'nombre', 'email')

admin.site.register(Empresa, AdminEmpresa)