from domain.models import Country


def list_all():
    return list(Country.objects.values())
