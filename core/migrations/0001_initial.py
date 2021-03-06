# Generated by Django 2.0.8 on 2019-03-25 02:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('code', models.IntegerField(primary_key=True, serialize=False, verbose_name='Código')),
                ('name', models.CharField(max_length=255, verbose_name='Nome')),
            ],
            options={
                'verbose_name': 'Cidade',
                'verbose_name_plural': 'Cidades',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Region',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, verbose_name='Nome')),
            ],
            options={
                'verbose_name': 'Região',
                'verbose_name_plural': 'Regiões',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Slide',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(max_length=255, verbose_name='Descrição')),
                ('photo', models.ImageField(upload_to='players/photo/', verbose_name='Foto')),
                ('link', models.URLField(max_length=5000, verbose_name='Link')),
                ('subtitle', models.CharField(blank=True, max_length=100, verbose_name='Legenda')),
            ],
            options={
                'verbose_name': 'Slide',
                'verbose_name_plural': 'Slides',
            },
        ),
        migrations.CreateModel(
            name='State',
            fields=[
                ('code', models.IntegerField(primary_key=True, serialize=False, verbose_name='Código')),
                ('name', models.CharField(max_length=255, verbose_name='Nome')),
                ('uf', models.CharField(max_length=20, verbose_name='Unidade Federativa')),
                ('region', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='core.Region', verbose_name='Região')),
            ],
            options={
                'verbose_name': 'Estado',
                'verbose_name_plural': 'Estados',
                'ordering': ['name'],
            },
        ),
        migrations.AddField(
            model_name='city',
            name='uf',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='core.State', verbose_name='Estado'),
        ),
        migrations.AlterUniqueTogether(
            name='city',
            unique_together={('name', 'uf')},
        ),
    ]
