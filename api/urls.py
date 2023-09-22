# Routes for the API

from django.urls import path, include
from rest_framework import routers
from api.views import *

router = routers.DefaultRouter()
router.register(r'clients', ClientViewSet, 'clients')
router.register(r'payment-methods', PaymentMethodViewSet, 'payment-methods')
router.register(r'continents', ContinentViewSet, 'continents')
router.register(r'countries', CountryViewSet, 'countries')
router.register(r'destinations', DestinationViewSet, 'destinations')
router.register(r'hotels', HotelViewSet, 'hotels')
router.register(r'flights', FlightViewSet, 'flight')
router.register(r'plans', PlanViewSet, 'plans')
router.register(r'bookings', BookingViewSet, 'bookings')
router.register(r'reviews', ReviewViewSet, 'reviews')

urlpatterns = [
    path('', welcome_page, name='welcome_page'),
    path('', include(router.urls))
]
