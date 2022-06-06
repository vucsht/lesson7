FROM ubuntu:18.04
RUN apt update
ADD requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]
