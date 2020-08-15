from django import template
from datetime import datetime, timedelta
register = template.Library()

@register.simple_tag(name='dayBefore')
def dayBefore(date):
    return (date - timedelta(days=1)).day