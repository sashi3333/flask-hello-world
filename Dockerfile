FROM python:3.12.0a7-alpine3.17
LABEL author: "Sashidhar"
EXPOSE 5000
ADD . /flask-hello-world
RUN cd flask-hello-world && \
    mv hello.py app.py && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask", "run", "-h", "0.0.0.0"]
