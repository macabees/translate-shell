FROM debian

ADD https://git.io/trans .

RUN chmod +x ./trans \
    && mv trans /usr/bin/ \
    && apt update \
    && apt install -y gawk bsdmainutils

ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

ENTRYPOINT ["trans"]
