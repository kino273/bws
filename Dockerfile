FROM fedora:23

RUN yum install -y firefox
RUN useradd -u 1000 worker
RUN echo "worker:password" | chpasswd

COPY startit.sh /tmp/

CMD ["/tmp/startit.sh"]
