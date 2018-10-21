"""
WSGI config for ai123 project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.11/howto/deployment/wsgi/
"""

import os
import sys
from django.core.wsgi import get_wsgi_application

path = '/Users/wang/pyprojects/ai123'
if path not in sys.path:
    sys.path.append(path)

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "ai123.settings")
os.environ['PYTHON_EGG_CACHE'] = '/tmp/.python-eggs'
application = get_wsgi_application()
