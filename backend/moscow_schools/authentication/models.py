from django.contrib.auth.models import AbstractUser, Permission, Group
from django.db import models

class CustomUser(AbstractUser):
    categories = (
        ('theatreArt', 'Театр'),
        ('musicArt', 'Музыка'),
        ('danceArt', 'Танцы'),
        ('visualArt', 'Изобразительное искусство')
    )
    firstName = models.CharField(max_length=100)
    lastName = models.CharField(max_length=100)
    middleName = models.CharField(max_length=100)
    phoneNumber = models.CharField(max_length=20)
    birthday = models.DateField(blank=True, null=True)
    interests = models.CharField(max_length=35, choices=categories)
    creationTime = models.DateTimeField(auto_now_add=True)
    groups = models.ManyToManyField(Group, related_name='custom_users', blank=True)
    user_permissions = models.ManyToManyField(Permission, related_name='custom_users', blank=True)

    def __str__ (self):
        return self.username