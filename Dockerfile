FROM alpine:3.6

LABEL vendor="bokazio" origin="https://github.com/bokazio/docker-ci-deploy"

# Install Build & Deployment Tools
RUN \
  apk add --no-cache \
    dumb-init \
    bash \
	git \
	rsync \
	ruby \ 
	ruby-io-console \
	build-base \
	libffi-dev \
	ruby-dev \
	ca-certificates \
	py-yuicompressor

# Install sass & clean up
RUN \
  gem install sass --no-ri --no-rdoc && \
  apk del build-base libffi-dev ruby-dev && \
  rm -rf /var/cache/apk/*