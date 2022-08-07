from django.urls import path
from .views import (home, loging, success, logouts, register, 
edit_form, changepassword, blogger, searchpage, blogdisplay, 
editblog, deleteblog, comments, add_comment, profilepage)

urlpatterns = [
    path('', home, name='home'),
    path('login/', loging, name='login'),
    path('success/', success, name='success'),
    path('logout/', logouts, name='logout'),
    path('register/', register, name='register'),
    path('edit_form/', edit_form, name='edit_form'),
    path('changepassword/', changepassword, name='changepassword'),
    path('blogger/', blogger, name='blogger'),
    path('searchpage/', searchpage, name='searchpage'),
    path('blogdisplay/', blogdisplay, name='blogdisplay'),
    path('editblog/<int:pk>/', editblog, name='editblog'),
    path('deleteblog/<int:pk>/', deleteblog, name='deleteblog'),
    path('comments/<int:pk>/', comments, name='comments'),
    path('comments/<int:pk>/add-comment', add_comment, name='add-comment'),
    path('profilepage/', profilepage, name='profilepage'),
]