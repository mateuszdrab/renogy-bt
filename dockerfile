FROM python:3.10

ADD . /renogy-bt

WORKDIR /renogy-bt

RUN apt-get update && apt-get install python3-dbus cmake build-essential libdbus-glib-1-dev libgirepository1.0-dev python3-gi -y

RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["python3", "./example_battery.py"]
