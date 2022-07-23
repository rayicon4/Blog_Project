from django import forms
from django.forms import ModelForm
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import Blog, commentmodel




class mandateform(ModelForm):
    class Meta:
        model = Blog
        fields = ['title','content']
        widgets = {
            'content':forms.Textarea(attrs={'rows':10, 'cols':80}), 
            'title':forms.Textarea(attrs={'rows':1, 'cols':80}),
        }

class blogcomment(ModelForm):
    class Meta:
        model = commentmodel
        fields = ['comment']
        widgets = {
            'comment':forms.Textarea(attrs={'rows':4, 'cols':55})
        }

class registrationform(UserCreationForm):

    class Meta:
        model = User
        fields = ['username',
                'first_name',
                'last_name', 
                'email',
                'password1',
                'password2']


# class userprofileform(forms.ModelForm):
#     class Meta:
#         model = test
#         fields = ['description', 'city', 'website', 'phone']

#class lookupform(for)

class editform(UserChangeForm):

    class Meta:
        model = User
        fields = {'username', 'first_name', 'last_name', 'email', 'password'}
       # exclude = {}#this can be used if the fields you want to remove are more than the ones you want to add