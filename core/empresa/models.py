from django.db import models
from django.contrib.auth.models import User
from phonenumber_field.modelfields import PhoneNumberField


class PaisEstadoCiudad(models.Model):
    nombre = models.CharField(verbose_name="Pais, Estado y Ciudad", max_length=150)

    class Meta:
        verbose_name = 'Pais, Estado y Ciudad'
        verbose_name_plural = 'Pises, Estados y Ciudades'
        
    def __str__(self):
        return self.nombre

class Empresa(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="Propietario de la empresa")
    nit = models.CharField(max_length=13, verbose_name="Nit")
    nombre = models.CharField(max_length=250, verbose_name="Nombre de la Empresa")
    nombre_comercial = models.CharField(max_length=250, verbose_name="Nombre Comercial")
    direccion = models.CharField(max_length=250, verbose_name="Direccion")
    telefono = PhoneNumberField(unique = True, null = False, blank = False)
    email = models.EmailField(max_length=250, verbose_name="Correo electronico")
    web = models.CharField(max_length=250, verbose_name="Sito Web", unique=True)
    paisestadociudad = models.ForeignKey(PaisEstadoCiudad, on_delete=models.SET_NULL, null=True, verbose_name="Pais, Estado, Ciudad")
    usuarios = models.ManyToManyField(User, verbose_name="Usuarios de la empresa", related_name="usuarios")

    def __str__(self):
        return self.nombre
    
