#/!/bin/bash
export NAMESPACE=default && \
export DOCKER_REPOSITORY=ysingh123 && \
export RABBITMQ_REPLICAS=2 && \
export RABBITMQ_DEFAULT_USER=username && \
export RABBITMQ_DEFAULT_PASS=password && \
export RABBITMQ_ERLANG_COOKIE=secret && \
export RABBITMQ_EXPOSE_MANAGEMENT=TRUE && \
export RABBITMQ_MANAGEMENT_SERVICE_TYPE=LoadBalancer && \
export RABBITMQ_HA_POLICY='{\"ha-mode\":\"all\"}' && \
export RABBITMQ_LOG_LEVEL=info && \
make deploy
