FROM ubuntu:latest
RUN apt update
RUN apt install -y python3-pip
RUN pip3 install flask
RUN apt install -y git
RUN git clone https://github.com/HSE-NN-SE/final-lab-SergeyBoryaev.git && cd final-lab-SergeyBoryaev
ENV FLASK_APP=final-lab-SergeyBoryaev/js_example
CMD python3 -m flask run --host=0.0.0.0
