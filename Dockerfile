FROM alpine:3.21

RUN apk --no-cache add tini

WORKDIR /app

COPY ./tongin ./tongin
COPY ./public/ ./public/

EXPOSE 10000

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["./tongin"]