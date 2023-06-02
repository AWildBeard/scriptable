FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
	dnsutils \
	curl \
	bash \
	jq \
	bzip2 \
	p7zip-full \
	iproute2 \
	iputils-ping \
	ca-certificates \
	git \
	gzip \
	openssh-client \
	tar \
	unzip \
	wget \
	zip \
	xz-utils && rm -rf /var/lib/apt/lists/*
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
	install -o root -g root -m 0755 kubectl /usr/bin
RUN adduser --uid 32323 --gid 32323 --shell /bin/bash --system ubuntu
USER ubuntu
WORKDIR /home/ubuntu
CMD "bash"
