FROM alpine:3.10

RUN apk add curl
RUN cd /tmp/
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl
RUN curl -LO https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.4.0/kustomize_v3.4.0_linux_amd64.tar.gz && tar xzf ./kustomize_v3.4.0_linux_amd64.tar.gz
RUN rm kustomize_v3.4.0_linux_amd64.tar.gz && cp kustomize kubectl /usr/local/bin/ && chmod +x /usr/local/bin/kustomize && chmod +x /usr/local/bin/kubectl

CMD ash
