from django.db import models
from rest_framework import viewsets
from . import models
from . import serializers
from rest_framework import generics


class HW(generics.ListCreateAPIView):
    queryset = models.HW.objects.all()
    serializer_class = serializers.HWSerializer

    
class HWDetailTodo(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.HW.objects.all()
    serializer_class = serializers.HWSerializer