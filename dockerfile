FROM python:3.8.2

COPY matan-repo1/DevopsCourse2024 /src/app

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

WORKDIR /src/app

RUN pip install --editable .
RUN flask init-db

EXPOSE 5000:5000

CMD ["flask","run", "--host=0.0.0.0"]
