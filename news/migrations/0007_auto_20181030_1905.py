# Generated by Django 2.0.3 on 2018-10-30 22:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0006_auto_20181030_1807'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='tag',
            field=models.ManyToManyField(blank=True, to='news.Tag', verbose_name='Tag'),
        ),
    ]