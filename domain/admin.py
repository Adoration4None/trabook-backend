from django.contrib import admin
from .models import *

# Register your models here.

admin.site.register(Client)
admin.site.register(PaymentMethod)
admin.site.register(Continent)
admin.site.register(Country)
admin.site.register(Destination)
admin.site.register(Hotel)
admin.site.register(Flight)
admin.site.register(Plan)
admin.site.register(Booking)
admin.site.register(Review)
