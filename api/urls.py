# Routes for the API

from django.urls import path, include
from rest_framework import routers
from api.views import *

router = routers.DefaultRouter()
router.register(r'clients', ClientViewSet, 'clients')
router.register(r'destinations', DestinationViewSet, 'destinations')
router.register(r'countries', CountryViewSet, 'countries')

urlpatterns = [
    path('', welcome_page, name='welcome_page'),
    path('', include(router.urls)),
    # path('clients/', ClientView.as_view(), name='clients'),
    # path('destinations/', DestinationView.as_view(), name='destinations'),
    path('plans/', PlanView.as_view(), name='plans'),
    path('reviews/', ReviewView.as_view(), name='reviews'),
    # path('countries/', CountryView.as_view(), name='countries')
]
