FROM jekyll/jekyll:3
LABEL maintainer="allen.lee@asu.edu"

# Provides a Jekyll 3 based Alpine Linux Docker that can also run the Makefile targets for lesson sanity checks etc. By
# default, runs `jekyll serve` for a hot-reloading Jekyll server on port 4000

 
RUN apk --no-cache add \
    ruby \
    ruby-dev \
    python3 \
    python3-dev \
    make \
    && pip3 install pyyaml \
    && gem install json kramdown \
    && ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /srv/jekyll
COPY . /srv/jekyll

CMD jekyll serve
