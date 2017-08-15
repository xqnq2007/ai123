import os
import sys

path = '/Users/admin/wang/djangoprojects/ai123'
if path not in sys.path:
    sys.path.append(path)
os.environ['DJANGO_SETTINGS_MODULE'] = 'ai123.settings'
os.environ['PYTHON_EGG_CACHE'] = '/tmp/.python-eggs'
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
