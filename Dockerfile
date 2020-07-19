#FROM jfloff/alpine-python:3.6
FROM qtacore/alpine-py3.6

WORKDIR /dockerEnv

ADD . /dockerEnv

RUN pip install -r /dockerEnv/tornado/requirements.txt

CMD ["python", "/dockerEnv/tornado/main.py"]
