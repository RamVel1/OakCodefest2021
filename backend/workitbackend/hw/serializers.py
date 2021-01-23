from django.db.models import fields
from rest_framework import serializers
from . import models

class HWSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.HW
        fields = "__all__"