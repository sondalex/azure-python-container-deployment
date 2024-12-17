FROM python:3.11.11-bookworm

WORKDIR /usr/src/app

ARG PAT

COPY requirements.txt ./

COPY app.py ./


RUN pip install Flask gunicorn

# The --quiet is important
RUN PAT=${PAT} pip install --quiet -r requirements.txt


CMD ["gunicorn", "app:app"]

