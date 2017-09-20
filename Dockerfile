FROM python:3

RUN pip install sqlite-web

VOLUME /db
WORKDIR /db

EXPOSE 8080

ENTRYPOINT ["sqlite_web", "--host=0.0.0.0", "--port=8080", "--no-browser"]
