FROM ubuntu:latest
COPY BASHRC 1.usergenerate 2.permit 3.autoschedule 4.attedance 5.record ./
COPY attendance.log position.log hackermode1.finalattendance hackermode2.nearest10 ./
COPY run.sh ./
COPY CRONTAB /etc/cron.d/CRONTAB
RUN apt-get update -y
RUN apt-get install -y cron
RUN service cron reload
RUN service cron start
RUN crontab /etc/cron.d/CRONTAB
CMD ./run.sh
