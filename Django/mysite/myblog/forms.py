from django import forms
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from myblog.models import Article


# Apply summernote to specific fields.
class Article_Form(forms.Form):
    content = forms.CharField(widget=SummernoteInplaceWidget())  # instead of forms.Textarea

