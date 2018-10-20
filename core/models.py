from django.db import models

# Create your models here.


class Region (models.Model):
    name = models.CharField('Nome', max_length=255)

    class Meta:
        verbose_name = 'Região'
        verbose_name_plural = 'Regiões'
        ordering = ['name']

    def __str__(self):
        return self.name


class State (models.Model):
    code = models.IntegerField(
        'Código', null=False, blank=False, primary_key=True)
    name = models.CharField('Nome', max_length=255)
    uf = models.CharField('Unidade Federativa', max_length=20)
    region = models.ForeignKey(
        Region, on_delete=models.CASCADE, verbose_name='Região', null=True, blank=True)

    class Meta:
        verbose_name = 'Estado'
        verbose_name_plural = 'Estados'
        ordering = ['name']

    def __str__(self):
        return self.uf


class City (models.Model):
    code = models.IntegerField(
        'Código', null=False, blank=False, primary_key=True)
    name = models.CharField('Nome', max_length=255)
    uf = models.ForeignKey(State, on_delete=models.CASCADE,
                           verbose_name='Estado', null=True, blank=True)

    class Meta:
        unique_together = (('name', 'uf'),)
        verbose_name = 'Cidade'
        verbose_name_plural = 'Cidades'
        ordering = ['name']

    def __str__(self):
        return self.name + ' - ' + str(self.uf)
