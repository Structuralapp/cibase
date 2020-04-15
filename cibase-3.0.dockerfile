FROM alpine:3.11.5

RUN apk update
RUN apk add curl

WORKDIR /cibase/eksctl
RUN curl -LO https://github.com/weaveworks/eksctl/releases/download/0.17.0/eksctl_Linux_amd64.tar.gz \
  && tar -zxvf eksctl_Linux_amd64.tar.gz \
  && chmod +x eksctl

WORKDIR /cibase/helm
RUN curl -LO https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz \
  && tar -zxvf helm-v3.0.2-linux-amd64.tar.gz \
  && chmod +x linux-amd64/helm

WORKDIR /cibase/kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl

WORKDIR /cibase/terraform
RUN curl -LO https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip \
  && unzip terraform_0.12.24_linux_amd64.zip \
  && chmod +x terraform

WORKDIR /cibase/yq
RUN curl -LO https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 \
  && chmod +x yq_linux_amd64

FROM alpine:3.11.5

RUN apk update
RUN apk add \
  "build-base" \
  "cairo-dev" \
  "curl" \
  "g++" \
  "giflib-dev" \
  "git" \
  "jpeg-dev" \
  "jq" \
  "nodejs" \
  "npm" \
  "openssh-client" \
  "pango-dev" \
  "pixman" \
  "python" \
  "python-dev" \
  "python3" \
  "python3-dev"

RUN pip3 install "awscli"
RUN pip3 install "aws-sam-cli"

RUN npm i -g aws-cdk

COPY --from=0 /cibase/eksctl/eksctl /usr/local/bin/eksctl
COPY --from=0 /cibase/helm/linux-amd64/helm /usr/local/bin/helm
COPY --from=0 /cibase/kubectl/kubectl /usr/local/bin/kubectl
COPY --from=0 /cibase/terraform/terraform /usr/local/bin/terraform
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
RUN terraform version
RUN yq -V
