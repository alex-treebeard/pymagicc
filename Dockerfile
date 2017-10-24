FROM jupyter/scipy-notebook:281505737f8a

MAINTAINER Robert Gieseke <robert.gieseke@pik-potsdam.de>

USER root

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y wine && \
    apt-get clean
RUN pip install pymagicc

COPY ./index.ipynb ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
