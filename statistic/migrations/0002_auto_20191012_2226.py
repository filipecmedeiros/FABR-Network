# Generated by Django 2.0.8 on 2019-10-13 01:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('statistic', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='eventtype',
            name='team_category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='team.SubTeam', verbose_name='Time'),
        ),
    ]