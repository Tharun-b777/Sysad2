#!/bin/bash
service cron reload
service cron start
crontab /etc/cron.d/CRONTAB
./1.usergenerate
./2.permit
./3.autoschedule
./4.attedance
./hackermode1.finalattendance
./hackermode2.nearest10
cat BASHRC >> /home/ArmyGeneral/.bashrc
cat BASHRC >> /home/NavyMarshal/.bashrc
cat BASHRC >> /home/AirForceChief/.bashrc
cat BASHRC >> /home/ChiefCommander/.bashrc