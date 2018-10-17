FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y varnish

ENV VARNISH_MALLOC="1024m"

COPY start.sh /

EXPOSE 6081 6082

CMD ["/start.sh"]
