# Generated by Django 2.0.8 on 2020-01-28 14:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('statistic', '0003_auto_20191024_2256'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='period',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='statistic.Period', verbose_name='Período'),
        ),
    ]