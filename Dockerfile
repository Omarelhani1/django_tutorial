FROM python:3
WORKDIR /usr/src/django
RUN pip install django mysqlclient && git clone https://github.com/Omarelhani1/django_tutorial.git /usr/src/django && mkdir static && chmod +x /usr/src/django/django_polls.sh
ENV ALLOWED_HOSTS=*
ENV mysql_host=mariadb
ENV mysql_user=django
ENV mysql_password=django
ENV mysql_db=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
CMD ["/usr/src/django/django_polls.sh"]


