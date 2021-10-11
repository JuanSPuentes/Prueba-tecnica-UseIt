from django.db.models.signals import post_save, m2m_changed
from django.dispatch import receiver
import itertools
from django.contrib.auth.models import User
from empresa.models import Invitaciones, Empresa


#Despues de guardar un usuario  crea la invitacion del usuario para recibir invitacions
@receiver(post_save, sender = User)
def CreateInvitacionPostSave(instance, sender, created, **kwargs):
    if created:
        Invitaciones.objects.get_or_create(user = instance)

#Eliminar la relacion m2m de empresa y usuarios/quita al usuario que esta invitado a la empresa
#Elimina la invitacion de la empresa y crea una nueva sin empresa para que cualquier otra empresa lo invite
@receiver(m2m_changed, sender = Empresa.usuarios.through)
def CreateInvitacionPostDelete(sender, instance, action, **kwargs):
    if action == "post_remove":
        for i in kwargs['pk_set']:
            user = User.objects.get(id = i)
        Invitaciones.objects.get(user = user).delete()
        Invitaciones.objects.create(user = user)

""" @receiver(post_delete, sender = Invitaciones)
def CreateInvitacionPostDelete(sender, instance, *args, **kwargs):
    if instance.empresa:
        Invitaciones.objects.get_or_create(user = instance.user) """
