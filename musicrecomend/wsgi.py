"""
WSGI config for musicrecomend project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application
#是服务器程序和应用程序的一个约定，规定了各自使用的接口和功能
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "musicrecomend.settings")#如果字典中包含有给定键，则返回该键对应的值，否则返回为该键设置的值。

application = get_wsgi_application()
