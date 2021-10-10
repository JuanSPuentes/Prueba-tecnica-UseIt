from django.contrib import admin
from .models import Empresa, Invitaciones, PaisEstadoCiudad
# Register your models here.
admin.site.register(PaisEstadoCiudad)

class AdminEmpresa(admin.ModelAdmin):
    list_display = ('user', 'nombre', 'email')

class AdminInvitaciones(admin.ModelAdmin):
    list_display = ('user', 'empresa', 'estado')

admin.site.register(Empresa, AdminEmpresa)

admin.site.register(Invitaciones, AdminInvitaciones)