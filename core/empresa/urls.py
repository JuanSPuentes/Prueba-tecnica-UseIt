from django.urls import path
from .views import AceptarInvitacion, CreateEmpresa, CreateInvitaciones, DeleteEmpresa, DeleteUsuarioInvitado, ListEmpresa, ListInvitaciones, ListUsuarios, RechazarInvitacion, UpdateEmpresa, json_load
app_name = "empresa"

urlpatterns = [
    #path('upload/city-country', json_load, name="city-country"),
    path('create/empresa', CreateEmpresa, name="create-empresa"),
    path('list/empresa', ListEmpresa.as_view(), name="list-empresa"),
    path('update/empresa/<pk>', UpdateEmpresa.as_view(), name="update-empresa"),
    path('delete/empresa/<pk>', DeleteEmpresa.as_view(), name="delete-empresa"),
    path('list/usuarios/', ListUsuarios.as_view(), name="list-usuario"),
    path('invitar/usuario/<user>', CreateInvitaciones.as_view(), name="invitar-usuario"),
    path('list/invitaciones', ListInvitaciones.as_view(), name="list-invitaciones"),
    path('aceptar/invitaciones/<user>', AceptarInvitacion.as_view(), name="aceptar-invitaciones"),
    path('rechazar/invitaciones/<user>', RechazarInvitacion.as_view(), name="rechazar-invitaciones"),
    path('delete/usuario_invitado/<user>', DeleteUsuarioInvitado.as_view(), name="delete-usuario-invitado"),
]
