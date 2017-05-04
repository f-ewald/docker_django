#!/bin/bash
echo "Hello"
# Launch the supervisorctl processes
supervisord -n -c /etc/supervisor/supervisord.conf
# echo "Hello2"
supervisorctl -c /etc/supervisor/supervisord.conf
supervisorctl reread
supervisorctl update
supervisorctl restart django_server
while :; do
  sleep 300
done
