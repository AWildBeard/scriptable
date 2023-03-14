FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
	dnsutils \
	curl \
	bash \
	jq \
	bzip2 \
	ca-certificates \
	git \
	gzip \
	openssh-client \
	tar \
	unzip \
	wget \
	zip \
	xz-utils && rm -rf /var/lib/apt/lists/*
RUN cd /bin && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && cd /
RUN adduser --shell /bin/bash --system ubuntu
USER ubuntu
WORKDIR /home/ubuntu
CMD "bash"
