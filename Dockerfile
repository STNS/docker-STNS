FROM ubuntu:latest
LABEL maintainer "OKUMURA Takahiro <hfm.garden@gmail.com>"

RUN apt-get update -qqy && \
    apt-get install -qqy sudo curl gnupg && \
    curl -fsSL https://repo.stns.jp/scripts/apt-repo.sh | sh && \
    apt-get install -y stns-v2 libnss-stns-v2 && \
    sed -i -e 's/^passwd:.*/passwd: files stns/g' /etc/nsswitch.conf && \
        sed -i -e 's/^shadow:.*/shadow: files stns/g' /etc/nsswitch.conf && \
        sed -i -e 's/^group:.*/group: files stns/g' /etc/nsswitch.conf
COPY server.conf /etc/stns/server/stns.conf
COPY client.conf /etc/stns/client/stns.conf
CMD ["stns"]

EXPOSE 1104
