FROM alpine:3.10.1

WORKDIR /buildbase

RUN apk update

RUN apk add \
  "build-base=0.5-r1" \
  "curl" \
  "jq" \
  "nodejs=10.16.0-r0" \
  "npm=10.16.0-r0" \
  "python=2.7.16-r1" \
  "python-dev=2.7.16-r1" \
  "python3=3.7.3-r0" \
  "python3-dev=3.7.3-r0"

RUN pip3 install "awscli==1.16.197"
RUN pip3 install "aws-sam-cli==0.18.0"

RUN curl -LO https://get.helm.sh/helm-v2.14.2-linux-amd64.tar.gz \
  && tar -zxvf helm-v2.14.2-linux-amd64.tar.gz \
  && mv linux-amd64/helm /usr/local/bin/helm

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl

RUN curl -LO https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 \
  && chmod +x yq_linux_amd64 \
  && mv yq_linux_amd64 /usr/local/bin/yq

RUN npm i -g aws-cdk@1.3.0

RUN aws --version
RUN cdk --version
RUN gcc --version
RUN helm version --client=true
RUN jq -V
RUN kubectl version --client=true
RUN node -v
RUN npm -v
RUN pip3 --version
RUN python --version
RUN python3 --version
RUN sam --version
RUN yq -V
