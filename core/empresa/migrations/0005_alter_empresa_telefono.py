# Generated by Django 3.2.8 on 2021-10-09 21:40

from django.db import migrations
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ('empresa', '0004_alter_empresa_telefono'),
    ]

    operations = [
        migrations.AlterField(
            model_name='empresa',
            name='telefono',
            field=phonenumber_field.modelfields.PhoneNumberField(max_length=128, region=None, unique=True),
        ),
    ]
