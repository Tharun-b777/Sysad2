FROM ubuntu:latest
COPY BASHRC 1.usergenerate 2.permit 3.autoschedule 4.attedance 5.record ./
COPY attendance.log position.log hackermode1.finalattendance hackermode2.nearest10 ./

ADD CRONTAB /etc/cron.d/CRONTAB
RUN apt-get clean
RUN apt-get update -y
RUN chmod +x /etc/cron.d/CRONTAB
RUN apt-get install -y cron
RUN service cron reload
RUN service cron start
RUN crontab /etc/cron.d/CRONTAB
RUN chmod +x BASHRC
RUN ./1.usergenerate
RUN ["chmod", "+x","./2.permit"]
RUN ./2.permit
RUN chmod +x 3.autoschedule
RUN ./3.autoschedule
RUN chmod +x 4.attedance
RUN ./4.attedance
RUN chmod +x 5.record
COPY 5.record /home/ArmyChief
COPY 5.record /home/NavyMarshal
COPY 5.record /home/AirForceChief
RUN chmod +x hackermode1.finalattendance
RUN ./hackermode1.finalattendance
RUN chmod +x hackermode2.nearest10
RUN ./hackermode2.nearest10
CMD ["bash","BASHRC"]
