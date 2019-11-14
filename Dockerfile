FROM python:3.7.3
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
COPY ./ /
WORKDIR /
EXPOSE 8000
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver"]