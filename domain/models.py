from django.db import models

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
    name = models.TextField(max_length=20)

    class Meta:
        db_table = 'continents'


class Country(models.Model):
    name = models.TextField(max_length=50)
    continent = models.ForeignKey(Continent, on_delete=models.PROTECT)

    class Meta:
        db_table = 'countries'


class Destination(models.Model):
    name = models.TextField(max_length=20)
    country = models.ForeignKey(Country, on_delete=models.PROTECT)

    class Meta:
        db_table = 'destinations'


class Hotel(models.Model):
    name = models.TextField(max_length=30)
    address = models.TextField(max_length=30)
    stars_number = models.IntegerField()

    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)

    class Meta:
        db_table = 'hotels'


class Fly(models.Model):
    fly_date = models.DateTimeField()
    total_seats = models.IntegerField()
    tourist_class_seats = models.IntegerField()
    first_class_seats = models.IntegerField()

    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)

    class Meta:
        db_table = 'flies'


class Plan(models.Model):
    trip_days = models.IntegerField()
    remaining_seats = models.IntegerField()
    description = models.TextField(max_length=200)
    price = models.FloatField()

    hotel = models.ForeignKey(Hotel, on_delete=models.PROTECT)
    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)
    departure_fly = models.OneToOneField(Fly, on_delete=models.CASCADE, related_name='departure_fly')
    return_fly = models.OneToOneField(Fly, on_delete=models.SET_NULL, null=True, related_name='return_fly')

    class Meta:
        db_table = 'plans'


class Booking(models.Model):
    booking_date = models.DateTimeField(auto_now_add=True)
    seats_booked = models.IntegerField()
    total_cost = models.FloatField()

    payment_method = models.ForeignKey(PaymentMethod, on_delete=models.PROTECT)
    client = models.ForeignKey(Client, on_delete=models.PROTECT)
    plan = models.ForeignKey(Plan, on_delete=models.PROTECT)

    class Meta:
        db_table = 'bookings'


class Review(models.Model):
    rating = models.FloatField()
    comment = models.TextField(max_length=500, null=True)

    plan = models.ForeignKey(Plan, on_delete=models.PROTECT)
    client = models.ForeignKey(Client, on_delete=models.PROTECT)

    class Meta:
        db_table = 'reviews'
