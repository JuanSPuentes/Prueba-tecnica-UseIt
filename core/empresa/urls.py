from django.urls import path
from .views import AceptarInvitacion, CreateContactoEmpresa, CreateEmpresa, CreateEmpresaCliente, CreateInvitaciones, DeleteEmpresa, DeleteEmpresaCliente, DeleteUsuarioInvitado, ListEmpresa, ListEmpresaCliente, ListInvitaciones, ListUsuarios, RechazarInvitacion, UpdateEmpresa, UpdateEmpresaCliente, json_load
app_name = "empresa"

urlpatterns = [
    #path('upload/city-country', json_load, name="city-country"),
    #empresa
    path('create/empresa', CreateEmpresa, name="create-empresa"),
    path('list/empresa', ListEmpresa.as_view(), name="list-empresa"),
    path('update/empresa/<pk>', UpdateEmpresa.as_view(), name="update-empresa"),
    path('delete/empresa/<pk>', DeleteEmpresa.as_view(), name="delete-empresa"),
    #usuarios e invitaciones
    path('list/usuarios/', ListUsuarios.as_view(), name="list-usuario"),
    path('invitar/usuario/<user>', CreateInvitaciones.as_view(), name="invitar-usuario"),
    path('list/invitaciones', ListInvitaciones.as_view(), name="list-invitaciones"),
    path('aceptar/invitaciones/<user>', AceptarInvitacion.as_view(), name="aceptar-invitaciones"),
    path('rechazar/invitaciones/<user>', RechazarInvitacion.as_view(), name="rechazar-invitaciones"),
    path('delete/usuario_invitado/<user>', DeleteUsuarioInvitado.as_view(), name="delete-usuario-invitado"),
    #empresa cliente
    path('create/empresa_cliente/', CreateEmpresaCliente, name="create-empresa-cliente"),
    path('listar/empresa_cliente/', ListEmpresaCliente.as_view(), name="list-empresa-cliente"),
    path('delete/empresa_cliente/<pk>', DeleteEmpresaCliente.as_view(), name="delete-empresa-cliente"),
    path('update/empresa_cliente/<pk>', UpdateEmpresaCliente.as_view(), name="update-empresa-cliente"),

    #contactos empresa cliente
    path('create/empresa_cliente/contactos/<pk>', CreateContactoEmpresa.as_view(), name ="create-contacto-cliente"),
]
