# Generated by Django 2.0.3 on 2018-04-24 17:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0007_auto_20180420_1652'),
    ]

    operations = [
        migrations.AddField(
            model_name='team',
            name='terciaryColor',
            field=models.CharField(blank=True, max_length=20, null=True, verbose_name='Cor terciária'),
        ),
    ]