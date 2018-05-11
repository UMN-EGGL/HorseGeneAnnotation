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
    python-setuptools \
    python-dev \
    build-essential \
	apt-transport-https \
    python3 \
    python3-dev \
    ruby \
    ruby-dev \
    zlib1g-dev

# FIXES: https://github.com/jekyll/jekyll/issues/4268
# Install program to configure locales
RUN apt-get install -y locales
RUN dpkg-reconfigure locales
#RUN locale-gen C.UTF-8 
#RUN /usr/sbin/update-locale LANG=C.UTF-8

# Install needed default locale for Makefly
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen 
RUN locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Copy over the source files into the 
COPY . HorseGeneAnnotation
WORKDIR /HorseGeneAnnotation


# Install the python package for gene annotation (backend)
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py 
RUN python get-pip.py
RUN python setup.py install

pip install Django
pip install locuspocus

# Install gems for jekyll
RUN gem install bundle jekyll
RUN bundle install
# Start the we front end
ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "4000" ]


# Build the Container with:
# $ docker build -t hga:latest .

# Run the Container passing through a port to the host
# $ docker run -p 4000:4000 -it hga
