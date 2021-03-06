FROM ubuntu:latest
RUN apt-get update && apt-get -y  upgrade
RUN apt install -y python3-pip
RUN pip3 install flask
RUN apt install -y git
RUN git clone https://github.com/HSE-NN-SE/final-lab-SergeyBoryaev.git && ls && cd final-lab-SergeyBoryaev
ENV FLASK_APP=final-lab-SergeyBoryaev/js_example
CMD python3 -m flask run --host=0.0.0.0
