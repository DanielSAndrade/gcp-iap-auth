FROM alpine:3.5
LABEL maintainer "Mario Freitas <imkira@gmail.com>"

RUN bash -c "ls ."
COPY ./auth.go /
COPY ./build/gcp-iap-auth /usr/local/bin/gcp-iap-auth

EXPOSE 80 443
ENTRYPOINT ["/usr/local/bin/gcp-iap-auth"]
