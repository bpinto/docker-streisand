FROM alpine:3.5

# Install dependencies
RUN apk --no-cache add \
    build-base \
    git \
    libffi-dev \
    linux-headers \
    openssh \
    openssl-dev \
    py-pip \
    python \
    python-dev \
    && pip install --upgrade pip

# Install ansible
RUN pip install ansible markupsafe

# Install cloud providers dependencies
RUN pip install boto3 boto dopy==0.3.5 "apache-libcloud>=1.5.0" linode-python pyrax

# Clone latest streisand code
RUN git clone https://github.com/jlund/streisand.git

WORKDIR /streisand

CMD ["/bin/sh", "/streisand/streisand"]
