from django.contrib import admin
from .models import  Blog, commentmodel, UserProfile, ProfileModels


admin.site.register(UserProfile)
admin.site.register(Blog)
admin.site.register(commentmodel)
admin.site.register(ProfileModels)