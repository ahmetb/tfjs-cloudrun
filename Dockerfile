FROM node:14-slim
WORKDIR /usr/src/app

RUN apt-get update -qqy && apt-get install -qqy \
        curl \
        gcc \
        python3-setuptools \
        python3-dev \
        python3-pip \
        apt-transport-https \
        lsb-release \
        openssh-client \
        git \
        gnupg && \
        rm -rf /var/lib/apt/lists/*
COPY package*.json ./
RUN npm install --only=production
COPY . ./
CMD [ "node", "index.js" ]
