FROM debian

RUN apt-get update
RUN apt-get install -y firefox-esr

RUN useradd -u 1000 worker
RUN mkdir /home/worker; chown worker:worker /home/worker
RUN echo "worker:password" | chpasswd

COPY startit.sh /tmp/

CMD ["/tmp/startit.sh"]
