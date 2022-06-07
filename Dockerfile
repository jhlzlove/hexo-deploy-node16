FROM node:16-buster-slim

LABEL version="1.0.3"
LABEL repository="https://github.com/jhlzlove/deploy-hexo-node16.git"
LABEL homepage="https://jhlzlove.github.io"
LABEL maintainer="jhlzlove <jhlzlove@163.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]