# Generated by Django 3.2.8 on 2021-10-09 15:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('empresa', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='paisestadociudad',
            options={'verbose_name': 'Pais, Estado y Ciudad', 'verbose_name_plural': 'Pises, Estados y Ciudades'},
        ),
        migrations.AlterField(
            model_name='paisestadociudad',
            name='nombre',
            field=models.CharField(max_length=150, verbose_name='Pais, Estado y Ciudad'),
        ),
    ]
