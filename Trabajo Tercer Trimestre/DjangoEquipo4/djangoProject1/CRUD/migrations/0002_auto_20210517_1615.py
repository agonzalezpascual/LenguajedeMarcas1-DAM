# Generated by Django 3.2.3 on 2021-05-17 14:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CRUD', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='coches',
            name='CNombre',
            field=models.CharField(default='nombre', max_length=100),
        ),
        migrations.AlterField(
            model_name='coches',
            name='CMxPas',
            field=models.IntegerField(),
        ),
    ]
