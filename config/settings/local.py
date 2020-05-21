from .base import *  # noqa
from .base import env

# GENERAL
# ------------------------------------------------------------------------------
DEBUG = True
SECRET_KEY = env(
    "DJANGO_SECRET_KEY",
    default="YTHBYgVn6VQdzjQh5XdXlFu6L7wkfnxBF0SHqyf5UONxDdZJ3FqRr5P6ocw76RkG",
)
ALLOWED_HOSTS = ["localhost", "0.0.0.0", "127.0.0.1"]


# CACHES
# ------------------------------------------------------------------------------
# https://docs.djangoproject.com/en/dev/ref/settings/#caches
CACHES = {
    "default": {
        "BACKEND": "django.core.cache.backends.locmem.LocMemCache",
        "LOCATION": "",
    }
}

# EMAIL
# ------------------------------------------------------------------------------
# https://docs.djangoproject.com/en/dev/ref/settings/#email-backend
EMAIL_BACKEND = "django.core.mail.backends.console.EmailBackend"
EMAIL_USE_TLS = env("DJANGO_EMAIL_USE_TLS", default=True)
EMAIL_HOST = env("DJANGO_EMAIL_HOST", default="smtp.gmail.com")
EMAIL_HOST_PASSWORD = env("DJANGO_EMAIL_HOST_PASSWORD", default="`132312123")
EMAIL_HOST_USER = env("DJANGO_EMAIL_HOST_USER", default="test@gmail.com")
EMAIL_PORT = env("DJANGO_EMAIL_PORT", default="587")
DEFAULT_FROM_EMAIL = env("DJANGO_DEFAULT_FROM_EMAIL", default=EMAIL_HOST_USER)

# WhiteNoise
# ------------------------------------------------------------------------------
# http://whitenoise.evans.io/en/latest/django.html#using-whitenoise-in-development
INSTALLED_APPS = ["whitenoise.runserver_nostatic"] + INSTALLED_APPS  # noqa F405

# Your stuff...
# ------------------------------------------------------------------------------
