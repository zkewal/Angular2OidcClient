# To build and run with Docker:
#
#  $ docker build -t kewalz/ng2oidc .
#  $ docker run -it --rm -p 4200:4200 kewalz/ng2oidc
#
FROM node:latest

RUN mkdir -p /quickstart /home/nodejs && \
    groupadd -r nodejs && \
    useradd -r -g nodejs -d /home/nodejs -s /sbin/nologin nodejs && \
    chown -R nodejs:nodejs /home/nodejs

WORKDIR /quickstart
COPY package.json /quickstart/
RUN npm install

COPY . /quickstart
RUN chown -R nodejs:nodejs /quickstart
USER nodejs

CMD npm start
