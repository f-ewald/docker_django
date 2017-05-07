#!/bin/bash
export PYTHONPATH=$PYTHONPATH:/usr/src/app/docker_django/apps

# Launch the supervisorctl processes
supervisord -n -c /etc/supervisor/supervisord.conf
supervisorctl -c /etc/supervisor/supervisord.conf
supervisorctl reread
supervisorctl update
supervisorctl restart django_server