from djoser.serializers import UserCreateSerializer
from django.contrib.auth import get_user_model

class CustomUserCreateSerializer(UserCreateSerializer):
    class Meta(UserCreateSerializer.Meta):
        model = get_user_model()
        fields = ('id', 'username', 'password', 'firstName', 'lastName',
                  'middleName', 'phoneNumber', 'birthday', 'interests')
        
from djoser.serializers import UserSerializer
from .models import CustomUser

class CustomUserSerializer(UserSerializer):
    class Meta(UserSerializer.Meta):
        model = CustomUser
        fields = ('id', 'username', 'firstName', 'lastName', 'middleName',
                  'phoneNumber', 'birthday', 'interests', 'creationTime'
                  )