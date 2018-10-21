# Generated by Django 2.0.3 on 2018-10-21 05:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0003_remove_team_state'),
        ('championship', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='season',
            name='champion',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='team.Team', verbose_name='Campeão'),
        ),
    ]
