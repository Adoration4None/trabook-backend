from domain.models import Client


def list_all():
    return list(Client.objects.values())

