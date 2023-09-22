# Settings for local run


from .base import *

# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': config('db_name'),
        'USER': config('db_user'),
        'PASSWORD': config('db_pass'),
        'HOST': config('db_host'),
        'PORT': config('db_port')
    }
}

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

STATIC_URL = 'static/'

CORS_ALLOWED_ORIGINS = [
    'http://localhost:8080'
]

CORS_ORIGIN_ALLOW_ALL = True
