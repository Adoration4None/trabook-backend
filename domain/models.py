from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator

# Create your models here.


class Client(models.Model):
    first_name = models.CharField(max_length=20)
    middle_name = models.CharField(max_length=20, null=True, blank=True)
    last_name = models.CharField(max_length=20)

    class Meta:
        db_table = 'clients'


class PaymentMethod(models.Model):
    name = models.CharField(max_length=20)

    class Meta:
        db_table = 'payment_methods'


class Continent(models.Model):
    name = models.CharField(max_length=20)

    class Meta:
        db_table = 'continents'


class Country(models.Model):
    name = models.CharField(max_length=50)
    continent = models.ForeignKey(Continent, on_delete=models.PROTECT)

    class Meta:
        db_table = 'countries'


class Destination(models.Model):
    name = models.CharField(max_length=50)
    image = models.FileField(upload_to='destinations-img', null=True, max_length=300)

    country = models.ForeignKey(Country, on_delete=models.PROTECT)

    class Meta:
        db_table = 'destinations'


class Hotel(models.Model):
    name = models.CharField(max_length=30)
    address = models.CharField(max_length=50)
    stars_number = models.IntegerField()

    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)

    class Meta:
        db_table = 'hotels'


class Flight(models.Model):
    fly_date = models.DateTimeField()
    total_seats = models.IntegerField()
    tourist_class_seats = models.IntegerField()
    first_class_seats = models.IntegerField()

    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)

    class Meta:
        db_table = 'flights'


class Plan(models.Model):
    name = models.CharField(max_length=30)
    trip_days = models.IntegerField()
    remaining_seats = models.IntegerField(null=True)
    description = models.TextField(max_length=200)
    price = models.FloatField()
    previous_price = models.FloatField(null=True)

    hotel = models.ForeignKey(Hotel, on_delete=models.PROTECT)
    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)
    departure_flight = models.OneToOneField(Flight, on_delete=models.CASCADE, related_name='plan_departure')
    return_flight = models.OneToOneField(Flight, on_delete=models.SET_NULL, null=True, related_name='plan_return')

    class Meta:
        db_table = 'plans'


class Booking(models.Model):
    booking_date = models.DateTimeField(auto_now_add=True)
    seats_booked = models.IntegerField()
    total_cost = models.FloatField()

    payment_method = models.ForeignKey(PaymentMethod, on_delete=models.PROTECT)
    client = models.ForeignKey(Client, on_delete=models.PROTECT, related_name='bookings')
    plan = models.ForeignKey(Plan, on_delete=models.PROTECT, related_name='bookings')

    class Meta:
        db_table = 'bookings'


class Review(models.Model):
    rating = models.FloatField(
        validators=[MinValueValidator(0.0), MaxValueValidator(5.0)]
    )
    comment = models.TextField(max_length=500, null=True, blank=True)

    plan = models.ForeignKey(Plan, on_delete=models.PROTECT, related_name='reviews')
    client = models.ForeignKey(Client, on_delete=models.PROTECT, related_name='reviews')

    class Meta:
        db_table = 'reviews'
