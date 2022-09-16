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
RUN adduser --shell /bin/bash --system ubuntu
USER ubuntu
WORKDIR /home/ubuntu
CMD "bash"
