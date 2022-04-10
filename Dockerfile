FROM alpine:3.15.4
COPY tar.vim /home/user/.vim/plugin/tar.vim
COPY /docker-entrypoint.sh /docker-entrypoint.sh
RUN apk add --no-cache tar vim gzip zip xz bzip2 zstd
ENTRYPOINT ["/docker-entrypoint.sh"]
