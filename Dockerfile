FROM alpine:latest
RUN apk add --no-cache \
	bind-tools \
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
	xz
RUN adduser -s /bin/bash -S alpine
USER alpine
WORKDIR /home/alpine
CMD "bash"
