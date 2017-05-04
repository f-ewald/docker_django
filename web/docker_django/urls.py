from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^api/v1', include('docker_django.apps.dercam.v1.urls')),
    #url(r'^api/v2', include('docker_django.apps.dercam_api.v2.urls')),
    url(r'^welcome/', include('docker_django.apps.todo.urls')),
]
