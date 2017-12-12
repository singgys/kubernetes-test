FROM rabbitmq:3.6.14-management

RUN apt-get update && apt-get install -y -qq jq curl bash

ADD rabbitmq_delayed_message_exchange-0.0.1.ez /plugins
ADD autocluster-0.10.0.ez  /plugins
ADD rabbitmq_aws-0.10.0.ez /plugins
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange --offline
RUN rabbitmq-plugins enable autocluster --offline

ENV RABBITMQ_BOOT_MODULE autocluster
ENV RABBITMQ_SERVER_ADDITIONAL_ERL_ARGS "-pa /plugins/autocluster-0.10.0.ez/autocluster-0.10.0/ebin"
ADD clusterer.config /etc/rabbitmq/

ADD set_cluster_nodes.sh /

RUN chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq
COPY docker-entrypoint.sh /usr/local/bin/
