from django.contrib import admin
from django.urls import path, include
from users.views import index

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/users/', include('users.urls')),
    path('api/hw/', include('hw.urls')),
    path('', index, name="index"),
]