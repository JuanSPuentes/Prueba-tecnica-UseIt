from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth.models import User
from empresa.models import Invitaciones, Empresa


##PERFIL POR FORMULARIO
@receiver(post_save, sender = User)
def agregarPerfil(instance, sender, created, **kwargs):
    if created:
        Invitaciones.objects.get_or_create(user = instance)
