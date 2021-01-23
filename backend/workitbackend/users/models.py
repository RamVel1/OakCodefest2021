from django.core.exceptions import ValidationError
from django.db import models

from django.contrib.auth.hashers import make_password

class User(models.Model):
    username = models.CharField(max_length=255, null=False)
    email = models.EmailField(max_length=255, null=False)
    ifLogged = models.BooleanField(default=False)
    password = models.CharField(max_length=50)
    token = models.CharField(max_length=500, null=True, default="")



    def __str__(self):
        return "{}".format(self.email)
