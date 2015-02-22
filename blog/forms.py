from django import forms

class CommentForm(forms.Form):
  nick = forms.CharField(label='Your Name', max_length=32)
  body = forms.CharField(widget=forms.Textarea)
