# Generated by Django 3.2.8 on 2021-10-10 17:04

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('empresa', '0010_alter_invitaciones_empresa'),
    ]

    operations = [
        migrations.AlterField(
            model_name='invitaciones',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Usuario Invitado'),
        ),
    ]