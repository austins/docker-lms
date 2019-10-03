FROM debian:buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y wget gnupg2
RUN wget -O - https://debian.poupon.io/apt/debian/epoupon.gpg.key | apt-key add -
RUN echo "deb https://debian.poupon.io/apt/debian buster main" > /etc/apt/sources.list.d/epoupon.list
RUN apt update && apt install -y lms

VOLUME ["/var/lms"]
EXPOSE 5082
