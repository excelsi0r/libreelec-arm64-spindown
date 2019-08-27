FROM arm64v8/ubuntu:latest
RUN apt update
RUN apt install sdparm
CMD sdparm --flexible -6 -l --set STANDBY=1 /dev/sda && sdparm --flexible -6 -l --set SCT=3000 /dev/sda
