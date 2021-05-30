FROM python:3.7.4

ARG TIMEZONE
ENV USER_HOME /root
ENV APP_FOLDER /usr/src/app

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get install -y \
        cron \
        nano \
        vim \
        gettext

RUN pip install --upgrade pip

RUN ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo ${TIMEZONE} > /etc/timezone && 2> /dev/null

ADD ./requirements.txt ${APP_FOLDER}/

WORKDIR ${APP_FOLDER}/

RUN pip install -r requirements.txt
