# Generated by Django 2.0.3 on 2018-05-31 18:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0002_auto_20180529_1933'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='date',
            field=models.DateField(verbose_name='Data'),
        ),
        migrations.AlterField(
            model_name='news',
            name='subtitle',
            field=models.CharField(blank=True, max_length=100, verbose_name='Legenda'),
        ),
        migrations.AlterField(
            model_name='news',
            name='title',
            field=models.CharField(max_length=80, verbose_name='Título'),
        ),
    ]