FROM mattrayner/lamp:latest-1604

COPY setup.sh /
RUN chmod +x setup.sh && ./setup.sh

WORKDIR /data

CMD tail -f /dev/null
