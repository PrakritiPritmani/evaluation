FROM python:3-alpine		
COPY ./requirements.txt /requirements.txt
ENV PYTHONUNBUFFERED 1

RUN pip install -r requirements.txt
COPY ./ /
WORKDIR /

EXPOSE 8000
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver"]
