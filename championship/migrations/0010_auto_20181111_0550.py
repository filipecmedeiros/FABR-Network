# Generated by Django 2.0.3 on 2018-11-11 08:50

import autoslug.fields
from django.db import migrations, models
import django.db.models.deletion
import django.utils.text


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0003_remove_team_state'),
        ('championship', '0009_auto_20181103_0052'),
    ]

    operations = [
        migrations.CreateModel(
            name='Campaign',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('victories', models.IntegerField(verbose_name='Vitórias')),
                ('defeties', models.IntegerField(verbose_name='Derrotas')),
                ('draws', models.IntegerField(verbose_name='Empates')),
                ('atkPoints', models.IntegerField(verbose_name='Pontos feitos')),
                ('dfsPoints', models.IntegerField(verbose_name='Pontos sofridos')),
            ],
            options={
                'verbose_name': 'Campanha',
                'verbose_name_plural': 'Campanhas',
                'ordering': ['division', 'team'],
            },
        ),
        migrations.RemoveField(
            model_name='division',
            name='teams',
        ),
        migrations.AddField(
            model_name='game',
            name='ended',
            field=models.BooleanField(default=True, verbose_name='Finalizado'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='season',
            name='slug',
            field=autoslug.fields.AutoSlugField(always_update=True, editable=False, max_length=255, populate_from=django.utils.text.slugify, unique=True, verbose_name='Identificador'),
        ),
        migrations.AddField(
            model_name='campaign',
            name='division',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='championship.Division', verbose_name='Divisão'),
        ),
        migrations.AddField(
            model_name='campaign',
            name='team',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='team.Team', verbose_name='Time'),
        ),
    ]