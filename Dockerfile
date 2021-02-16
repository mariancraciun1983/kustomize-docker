FROM alpine:3.13.1

RUN apk --no-cache add curl

ENV KUSTOMIZE_VERSION=3.10.0

RUN mkdir /app

WORKDIR /app

RUN curl -sLf "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz" -o kustomize.tar.gz\
    && tar xf kustomize.tar.gz \
    && mv kustomize /usr/bin \
    && chmod +x /usr/bin/kustomize \
    && rm -rf ./kustomize*

CMD ["/usr/bin/kustomize"]