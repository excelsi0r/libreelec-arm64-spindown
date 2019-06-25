FROM arm64v8/alpine:latest
RUN apt update
RUN apt install sdparm
VOLUME /dev/sda
CMD sdparm --flexible -6 -l --set STANDBY=1 /dev/sda && sdparm --flexible -6 -l --set SCT=3000 /dev/sda
