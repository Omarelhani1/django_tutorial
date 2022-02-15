FROM python:3
WORKDIR /usr/src/django
RUN apt update && apt upgrade -y 
RUN pip install django mysqlclient && git clone https://github.com/Omarelhani1/django_tutorial.git /usr/src/django && mkdir static && chmod + /usr/src/django/django_polls.sh
RUN pip install -r requirements.txt
ENV ALLOWED_HOSTS=*
ENV mysql_host=mariadb
ENV mysql_user=django
ENV mysql_password=django
ENV mysql_db=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
CMD ["/bin/bash","/usr/src/django/django_polls.sh"]


