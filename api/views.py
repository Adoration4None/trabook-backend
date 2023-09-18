from django.http import JsonResponse
from django.views import View
from domain.services import (client_service, destination_service, plan_service,
                             review_service, country_service)

# Create your views here.


def welcome_page(request):
    response = {'message': 'Welcome to the Trabook API'}
    return JsonResponse(response)


class ClientView(View):
    def get(self, request):
        clients = client_service.list_all()
        response = {'status': 'OK', 'clients': clients}

        return JsonResponse(response)

    def post(self, request):
        pass

    def put(self, request):
        pass

    def delete(self, request):
        pass


class DestinationView(View):
    def get(self, request):
        destinations = destination_service.list_all()
        response = {'status': 'OK', 'destinations': destinations}

        return JsonResponse(response)

    def post(self, request):
        pass

    def put(self, request):
        pass

    def delete(self, request):
        pass


class PlanView(View):
    def get(self, request):
        plans = plan_service.list_all()
        response = {'status': 'OK', 'plans': plans}

        return JsonResponse(response)

    def post(self, request):
        pass

    def put(self, request):
        pass

    def delete(self, request):
        pass


class ReviewView(View):
    def get(self, request):
        reviews = review_service.list_all()
        response = {'status': 'OK', 'reviews': reviews}

        return JsonResponse(response)

    def post(self, request):
        pass

    def put(self, request):
        pass

    def delete(self, request):
        pass


class CountryView(View):
    def get(self, request):
        countries = country_service.list_all()
        response = {'status': 'OK', 'countries': countries}

        return JsonResponse(response)

    def post(self, request):
        pass

    def put(self, request):
        pass

    def delete(self, request):
        pass