FROM alpine:3.10.2

RUN apk update
RUN apk add curl

WORKDIR /cibase/eksctl
RUN curl -LO https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Linux_amd64.tar.gz \
  && tar -zxvf eksctl_Linux_amd64.tar.gz \
  && chmod +x eksctl

WORKDIR /cibase/helm
RUN curl -LO https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz \
  && tar -zxvf helm-v2.14.3-linux-amd64.tar.gz \
  && chmod +x linux-amd64/helm

WORKDIR /cibase/kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl

WORKDIR /cibase/yq
RUN curl -LO https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 \
  && chmod +x yq_linux_amd64

FROM alpine:3.10.2

RUN apk update
RUN apk add \
  "build-base=0.5-r1" \
  "curl" \
  "git=2.22.0-r0" \
  "jq" \
  "nodejs=10.16.3-r0" \
  "npm=10.16.3-r0" \
  "openssh-client=8.0_p1-r0" \
  "pixman=0.38.4-r0" \
  "python=2.7.16-r1" \
  "python-dev=2.7.16-r1" \
  "python3=3.7.4-r0" \
  "python3-dev=3.7.4-r0"

RUN pip3 install "awscli==1.16.249"
RUN pip3 install "aws-sam-cli==0.22.0"

RUN npm i -g aws-cdk@1.8.0

COPY --from=0 /cibase/eksctl/eksctl /usr/local/bin/eksctl
COPY --from=0 /cibase/helm/linux-amd64/helm /usr/local/bin/helm
COPY --from=0 /cibase/kubectl/kubectl /usr/local/bin/kubectl
COPY --from=0 /cibase/yq/yq_linux_amd64 /usr/local/bin/yq

RUN aws --version
RUN cdk --version
RUN eksctl version
RUN git --version
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
RUN ssh -V
RUN yq -V
