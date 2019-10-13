# Generated by Django 2.0.8 on 2019-09-29 14:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('team', '0003_auto_20190512_2108'),
        ('championship', '0006_auto_20190513_0202'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Criado')),
                ('modified', models.DateTimeField(auto_now=True, verbose_name='Modificado')),
            ],
            options={
                'verbose_name': 'Evento',
                'verbose_name_plural': 'Eventos',
                'ordering': ['-game'],
            },
        ),
        migrations.CreateModel(
            name='EventType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, verbose_name='Tipo')),
                ('team_category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='team.TeamCategory', verbose_name='Time')),
            ],
            options={
                'verbose_name': 'Tipo de jogada',
                'verbose_name_plural': 'Tipos de jogadas',
                'ordering': ['team_category', 'name'],
            },
        ),
        migrations.CreateModel(
            name='Period',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=50, null=True, verbose_name='Período')),
            ],
            options={
                'verbose_name': 'Período',
                'verbose_name_plural': 'Períodos',
                'ordering': ['name'],
            },
        ),
        migrations.AddField(
            model_name='event',
            name='event_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='statistic.EventType', verbose_name='Tipo de evento'),
        ),
        migrations.AddField(
            model_name='event',
            name='game',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='championship.Game', verbose_name='Jogo'),
        ),
        migrations.AddField(
            model_name='event',
            name='period',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='statistic.Period', verbose_name='Período'),
        ),
        migrations.AddField(
            model_name='event',
            name='playerA',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='playerA', to='team.Player', verbose_name='Jogador A'),
        ),
        migrations.AddField(
            model_name='event',
            name='playerB',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='playerB', to='team.Player', verbose_name='Jogador B'),
        ),
    ]