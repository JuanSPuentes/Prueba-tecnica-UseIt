from django.urls import path
from .views import CreateEmpresa, DeleteEmpresa, ListEmpresa, UpdateEmpresa, json_load
app_name = "empresa"

urlpatterns = [
    #path('upload/city-country', json_load, name="city-country"),
    path('create/empresa', CreateEmpresa, name="create-empresa"),
    path('list/empresa', ListEmpresa.as_view(), name="list-empresa"),
    path('update/empresa/<pk>', UpdateEmpresa.as_view(), name="update-empresa"),
    path('delete/empresa/<pk>', DeleteEmpresa.as_view(), name="delete-empresa"),
]
