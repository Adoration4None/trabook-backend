# Routes for the API

from django.urls import path
from api.views import *

urlpatterns = [
    path('', welcome_page, name='welcome_page'),
    path('clients/', ClientView.as_view(), name='clients'),
    path('destinations/', DestinationView.as_view(), name='destinations'),
    path('plans/', PlanView.as_view(), name='plans'),
    path('reviews/', ReviewView.as_view(), name='reviews'),
    path('countries/', CountryView.as_view(), name='countries')
]
