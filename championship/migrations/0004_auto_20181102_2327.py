# Generated by Django 2.0.3 on 2018-11-03 02:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('championship', '0003_auto_20181021_0205'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='game',
            name='teamA',
        ),
        migrations.RemoveField(
            model_name='game',
            name='teamB',
        ),
        migrations.RemoveField(
            model_name='game',
            name='week',
        ),
        migrations.RemoveField(
            model_name='round',
            name='season',
        ),
        migrations.DeleteModel(
            name='Game',
        ),
        migrations.DeleteModel(
            name='Round',
        ),
    ]
