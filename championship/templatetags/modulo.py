from django import template
register = template.Library()

@register.simple_tag(name='modulo')
def modulo(num, val):
    return num % val