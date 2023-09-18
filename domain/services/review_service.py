from domain.models import Review


def list_all():
    return list(Review.objects.values())
