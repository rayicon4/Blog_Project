from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

#testing the forms class sample
from django import forms


class Blog(models.Model):
    username = models.ForeignKey(User, null=True, on_delete=models.CASCADE)
    author = models.CharField(max_length=30)
    title = models.TextField(max_length=100)
    content = models.TextField()
    #comment = models.TextField(null=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title


class commentmodel(models.Model):
    blog = models.ForeignKey(Blog, related_name= "comments", on_delete=models.CASCADE) 
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    comment = models.TextField()
    created = models.DateTimeField(auto_now_add=True)

    # def __str__(self):
    #     return self.author


    

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    description = models.CharField(max_length=100, default='')
    city = models.CharField(max_length=30)
    website = models.URLField(default='', null=True)
    phone = models.IntegerField(default=0)
    #fileupload = models.FileField(upload_to='media')
    image = models.ImageField(default='default.ico', upload_to='profile_pics', blank=True)

    # def __str__(self):
    #     return self.user


class ProfileModels(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    aboutme = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=100)
    phone = models.CharField(max_length=13)
    image=models.ImageField(default='default.ico', upload_to='profile_pics', blank=True)

    



@receiver(post_save, sender=User)
def create_profile(sender, instance, created, **kwargs):
    if created:
        user_profile = UserProfile.objects.create(user=instance)


# def create_profile(sender, **kwargs):
#     if kwargs['created']:
#         user_profile = UserProfile.objects.create(user=kwargs['instance'])
    
# post_save.connect(create_profile, sender=User)


class fileupload(forms.Form):
    title = forms.CharField(max_length=50)
    file = forms.FileField()