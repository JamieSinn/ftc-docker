FROM ubuntu:18.04

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y default-jdk git wget unzip
RUN mkdir /ftc && cd /ftc && wget https://github.com/FIRST-Tech-Challenge/scorekeeper/releases/download/v1.3.0/FIRST-Tech-Challenge-Live-1.3.0.zip && unzip *.zip && rm *.zip

EXPOSE 80

CMD ["/bin/bash"]
