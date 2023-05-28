from django.urls import path
from .views import *

urlpatterns = [
    path('', NewsAPIView.as_view()),
    path('id<int:news_id>', NewsDetailView.as_view())
]