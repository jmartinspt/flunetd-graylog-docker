FROM fluent/fluentd:v1.7.3-debian-1.0

USER root

RUN gem install gelf

USER fluent

COPY fluent.conf /fluentd/etc/fluent.conf
COPY plugins/* /fluentd/plugins/