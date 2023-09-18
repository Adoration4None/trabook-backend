from domain.models import Destination


def list_all():
    return list(Destination.objects.values())
