# Generated by Django 3.0.5 on 2020-05-17 09:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('worldclim', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='climate',
            name='hum',
            field=models.PositiveIntegerField(blank=True, null=True),
        ),
    ]
