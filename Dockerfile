FROM ubuntu:18.04
WORKDIR /ftc
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y default-jdk git wget unzip curl jq
RUN curl -s https://api.github.com/repos/first-tech-challenge/scorekeeper/releases/latest | jq -r '.assets | .[0] | .browser_download_url ' | wget -qi -
RUN unzip *.zip && rm *.zip
RUN mv */* .
RUN cd bin
WORKDIR /ftc/bin
EXPOSE 80/tcp
ENTRYPOINT ["/ftc/bin/FIRST-Tech-Challenge-Live"]

