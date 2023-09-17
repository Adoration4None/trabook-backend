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


class Hotel(models.Model):



class Destination(models.Model):



class Fly(models.Model):



class Plan(models.Model):
    trip_days = models.IntegerField()
    remaining_seats = models.IntegerField()
    description = models.TextField(max_length=200)
    price = models.FloatField()

    hotel = models.ForeignKey(Hotel, on_delete=models.PROTECT)
    destination = models.ForeignKey(Destination, on_delete=models.PROTECT)
    departure_fly = models.OneToOneField(Fly, on_delete=models.CASCADE)
    return_fly = models.OneToOneField(Fly, on_delete=models.SET_NULL, null=True)

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



