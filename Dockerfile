FROM openrct2/openrct2-cli:0.2.3

USER root

RUN adduser --quiet --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT /bin/bash /entrypoint.sh
