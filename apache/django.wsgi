import os
import sys

path = '/var/www/html/ai123'
if path not in sys.path:
    sys.path.append(path)
os.environ['DJANGO_SETTINGS_MODULE'] = 'ai123.settings'

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
