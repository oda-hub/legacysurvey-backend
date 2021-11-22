FROM python:3.8

ADD requirements.txt /requirements.txt

RUN pip install -r requirements.txt

ADD Legacysurvey_tap.ipynb /repo/Legacysurvey_tap.ipynb

ENTRYPOINT nb2service /repo/ --host 0.0.0.0 --port 8000
