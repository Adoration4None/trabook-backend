from domain.models import Plan


def list_all():
    return list(Plan.objects.values())
