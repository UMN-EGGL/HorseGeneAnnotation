FROM ubuntu:18.04
MAINTAINER Rob<rob@linkage.io>
LABEL Description "https://github.com/UMN-EGGL/HorseGeneAnnotation"

# Install the necessary packages ontop of base ubuntu installation 
RUN apt-get -y update && apt-get install -y \
    curl \
	lsb-release \ 
    wget \
    git \
    gcc \
    build-essential \
	apt-transport-https \
    python3 \
    python3-dev \
    ruby \
    ruby-dev \
    zlib1g-dev

# Install gems for jekyll
RUN gem install bundle jekyll

# Copy over the source files into the 
COPY . HorseGeneAnnotation


WORKDIR /HorseGeneAnnotation
RUN bundle install
ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "4000" ]


# Build the Container with:
# $ docker build -t hga:latest .

# Run the Container passing through a port to the host
# $ docker run -p 4000:4000 -it hga


# Inside the container
# $ cd HorseGeneAnnotation
# $ jekyll serve --baseurl='' -H 0.0.0.0
