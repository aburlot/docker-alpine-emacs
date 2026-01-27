FROM alpine:3.23

MAINTAINER Alan Burlot "gitlab.dispersal394@passinbox.com"

RUN apk update && apk add ca-certificates emacs

WORKDIR /root

COPY init.el /root/.emacs.d/
COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "emacs" ]
