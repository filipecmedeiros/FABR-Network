# Generated by Django 2.0.3 on 2018-04-05 21:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0002_news_subtitle'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='news',
            name='category',
        ),
        migrations.DeleteModel(
            name='Category',
        ),
    ]