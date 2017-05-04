FROM python:3.5-onbuild

# Install supervisor to manage all the processes
RUN apt-get update && apt-get install apt-utils supervisor -y

# Copy the settings files for the server and celery beat processes
COPY django_server.conf /etc/supervisor/conf.d/
