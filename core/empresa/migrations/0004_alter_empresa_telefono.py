# Generated by Django 3.2.8 on 2021-10-09 21:39

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('empresa', '0003_empresa'),
    ]

    operations = [
        migrations.AlterField(
            model_name='empresa',
            name='telefono',
            field=models.CharField(max_length=10, validators=[django.core.validators.RegexValidator(message='Por favor escribe el numero en el formato aceptado sin código de área ej: 3123456789', regex='^(3)([0-9]){9}$')], verbose_name='Telefono'),
        ),
    ]
