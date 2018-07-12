# Generated by Django 2.0.3 on 2018-05-29 22:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0002_league_terciarycolor'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='league',
            name='region',
        ),
        migrations.AddField(
            model_name='league',
            name='facebook',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Facebook'),
        ),
        migrations.AddField(
            model_name='league',
            name='instagram',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Instagram'),
        ),
        migrations.AlterField(
            model_name='player',
            name='facebook',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Facebook'),
        ),
        migrations.AlterField(
            model_name='player',
            name='hometown',
            field=models.ForeignKey(default=2611606, on_delete=django.db.models.deletion.CASCADE, to='core.City', verbose_name='Cidade natal'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='player',
            name='instagram',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Instagram'),
        ),
        migrations.AlterField(
            model_name='team',
            name='city',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.City', verbose_name='Cidade'),
        ),
        migrations.AlterField(
            model_name='team',
            name='facebook',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Facebook'),
        ),
        migrations.AlterField(
            model_name='team',
            name='instagram',
            field=models.URLField(blank=True, max_length=255, null=True, verbose_name='Instagram'),
        ),
        migrations.AlterField(
            model_name='team',
            name='state',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.State', verbose_name='Estado'),
        ),
    ]