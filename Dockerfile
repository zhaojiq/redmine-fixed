FROM redmine:4.0-alpine
RUN  apk add --no-cache make gcc
RUN  apk add --no-cache libc-dev
