from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib import messages
from .models import Blog, UserProfile, ProfileModels, commentmodel
from .forms import registrationform, editform, mandateform, blogcomment
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserChangeForm, PasswordChangeForm
from django.http import HttpResponse
from django.contrib.auth import update_session_auth_hash
from datetime import datetime



def home(request):
    pokemon = Blog.objects.all()
    return render(request, 'accounts/home.html', {'pokemon':pokemon})

@login_required
def searchpage(request):
    if request.method == 'POST':
        search = request.POST('searched')
        result = Blog.objects.filter(author__contains = search)

        context = {'search':search, 'result':result}
        return render(request, 'accounts/searchpage.html', context)
    return render(request, 'accounts/searchpage.html')

#@login_required
def blogger(request):
    pi = Blog.objects.all()
    #flunt = Blog.objects.get()
    zin = mandateform()
    #xo = UserProfile.objects.filter(user=request.user)

    if request.method == "POST":
        zin = mandateform(request.POST)
        if zin.is_valid():
            instance = zin.save(commit=False)
            instance.user  = request.user
            instance.author = request.user.first_name + " " + request.user.last_name
           
            instance.content = zin.cleaned_data['content']
            instance.created = datetime.now()
            instance.save()
            messages.success(request, 'Your message has been posted.')
            return redirect('blogger')

    return render(request, 'accounts/blogger.html', {'pi':pi, 'zin':zin})#, 'xo':xo})

def blogdisplay(request):
    pin = Blog.objects.all()
    return render(request, 'accounts/blogdisplay.html', {'pin':pin})

def loging(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        user = authenticate(username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('success')
        else:
            messages.info(request, 'invalid information provided')
            return redirect('login')

    return render(request, 'accounts/login.html')

def editblog(request, pk):

    zero = Blog.objects.get(id=pk)
    trak = mandateform(instance=zero)

    # if request.user != zero.username:
    #     messages.info(request, 'you are not allowed here')
   
    trak = mandateform(instance=zero)
    if request.method == "POST":
        trak = mandateform(request.POST, instance=zero)
        if trak.is_valid():
            trak.save()
            #size = trak.cleaned_data['users']
            #size.save()
            return redirect('home')

    context = {'zero':zero, 'trak':trak}
    return render(request, 'accounts/editblog.html', context)

def deleteblog(request, pk):
    zeron = Blog.objects.get(id=pk)

    if request.method == "POST":
        zeron.delete()
        return redirect('home')
    return render(request, 'accounts/deleteblog.html', {'zeron':zeron})

@login_required
def success(request):
    strong = UserProfile.objects.all()
    messages.success(request, 'Welcome to your profile. Please complete your profile info if you have not done so.')
    
    return render(request, 'accounts/success.html', {'strong':strong})



def register(request):
    forms = registrationform()

    if request.method == "POST":
        forms = registrationform(request.POST)

        if forms.is_valid():
            forms.save()
            messages.success(request, 'Your account has been registered, please sign in.')
            return redirect('login')
        else:
            messages.info(request, 'those are not correct details, please insert correct details!')
            #return redirect('register')

    return render(request, 'accounts/register.html', {'forms':forms})


def logouts(request):
    logout(request)
    return redirect('/')
    #return render(request, 'accounts/home.html')

def comments(request, pk):
    flax = Blog.objects.get(id=pk)

    #dlux = commentmodel.objects.all()

    # com = blogcomment(instance=flax)
    # if request.method == 'POST':
    #     com = blogcomment(request.POST, instance=flax)
    #     if com.is_valid():
    #         com.save(commit=False)
    #         #com.blog = request.blog
    #         com.author = request.user.first_name + " " + request.user.last_name
    #         com.comment = com.cleaned_data['comment']
    #         com.created = datetime.now()
    #         com.save()
    #         return redirect('comment')

    context = {'flax':flax}
    return render(request, 'accounts/comment.html', context)

def add_comment(request, pk):
    flixe = Blog.objects.get(id=pk)

    com = blogcomment(instance=flixe)
    if request.method == 'POST':
        com = blogcomment(request.POST, instance=flixe)
        if com.is_valid():
            name = request.user
            body = com.cleaned_data['comment']
            com = commentmodel(blog=flixe, author=name, comment=body, created=datetime.now())
            com.save()
            return redirect('home') 

    context = {'flixe':flixe, 'com':com}
    return render(request, 'accounts/add_comment.html', context)


def edit_form(request):
    val = editform()
    if request.method == "POST":
        val = editform(request.POST, instance=request.user)

        if val.is_valid():
            val.save()
            return redirect('success')
        else:
           messages.info(request, 'form in invalid')
           return redirect('success')

    context={'val':val}
    return render(request, 'accounts/edit_form.html', context)



def changepassword(request):
    form = PasswordChangeForm(request.user, request.POST)
    if request.method == "POST":
        form = PasswordChangeForm(data=request.POST, user=request.user)
        if form.is_valid():
            form.save()
            update_session_auth_hash(request, User)
            messages.success(request, 'password changed successfully')
            return redirect('login')
        else:
            messages.error(request, 'something went wrong, possibly password mismatch. Try again!')
            return redirect('changepassword')
    context = {'form':form}
    return render(request, 'accounts/changepassword.html', context)

def profilepage(request):
    profilep = ProfileModels.objects.all()

    context = {'profilep':profilep}
    return render(request, 'accounts/profilepage.html', context)


# def profileinfo(request):

#     santa = userprofileform()
#     if request.method == "POST":
#         santa = userprofileform(request.POST)
#         if santa.is_valid():
#             santa.save(commit=False)
#             santa.user = request.user
#             santa.save()
#             #santa.profileinfo = santa.cleaned_data['UserProfile']
#             return redirect('success')
#         else:
#             messages.danger(request, 'some of your input is invalid')
#             return redirect('profileinfo')
#     context = {'santa':santa}
#     return render(request, 'accounts/profileinfo.html', context)






    