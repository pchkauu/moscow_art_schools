from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import generics
from django.http import HttpResponse, JsonResponse
from django.views import View
from .models import News
from .serializers import NewsSerializer
from requests import  request
import json



    


class NewsAPIView(generics.ListAPIView):
    queryset = News.objects.all()
    serializer_class = NewsSerializer

class NewsDetailView(APIView):
    def get(self, request, news_id):
        try:
            news = News.objects.get(newsId=news_id)
            serializer = NewsSerializer(news)
            return Response(serializer.data)
        except News.DoesNotExist:
            return Response({'error': 'News not found'}, status=404)