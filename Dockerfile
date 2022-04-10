FROM alpine:3.15.4
COPY tar-1.00.vim /home/user/.vim/plugin/tar.vim
RUN apk add --no-cache tar vim && \
    chown -R 1000:1000 /home/user && \
    adduser -D -H user
USER user
ENTRYPOINT ["/usr/bin/vim"]
CMD ["/edit.tar"]
