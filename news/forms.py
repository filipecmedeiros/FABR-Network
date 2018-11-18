from django import forms
from .models import News
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget

class NewsForm (forms.ModelForm):
	class Meta:
		model = News
		fields = '__all__'
		widgets = {
            'text': SummernoteWidget(attrs={'width': '50%', 'height': '400px', 'fontNames':['Arial'],}),
        }