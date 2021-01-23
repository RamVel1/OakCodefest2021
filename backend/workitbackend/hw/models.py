from django.db import models

# Create your models here.
class HW(models.Model):
    title= models.CharField(max_length=100)
    description= models.TextField()
    added_on = models.DateTimeField(auto_now_add=True)
    deadline = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.title