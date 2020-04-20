FROM ubuntu:18.04
WORKDIR /ftc
ARG FTCVersion=1.3.0
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y default-jdk git wget unzip
RUN wget https://github.com/FIRST-Tech-Challenge/scorekeeper/releases/download/v$FTCVersion/FIRST-Tech-Challenge-Live-$FTCVersion.zip && unzip *.zip -d /ftc/scorekeeper && rm *.zip
WORKDIR /ftc/scorekeeper/FIRST-Tech-Challenge-Live-$FTCVersion/bin
EXPOSE 80/tcp
ENTRYPOINT ["/ftc/scorekeeper/FIRST-Tech-Challenge-Live-1.3.0/bin/FIRST-Tech-Challenge-Live"]

