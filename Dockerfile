FROM redmine:4.0-alpine
RUN  apk add --no-cache make gcc
RUN  apk add --no-cache libc-dev
RUN  apk add git
WORKDIR /usr/src/redmine/plugins
RUN  git clone https://github.com/devopskube/redmine_openid_connect.git
RUN  git clone https://github.com/phlegx/redmine_gitlab_hook.git
WORKDIR /usr/src/redmine
RUN  /docker-entrypoint.sh
