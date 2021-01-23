from django.urls import path
from rest_framework import views
from .views import HW, HWDetailTodo
urlpatterns = [ 
    path('', HW.as_view()),
    path('<int:pk>/', HWDetailTodo.as_view())
]