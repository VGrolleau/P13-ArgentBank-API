FROM node:10.16.0-alpine
WORKDIR /usr/src/app
RUN mkdir server
COPY server/ server/
COPY package.json .
COPY .env .
RUN /usr/local/bin/npm install
EXPOSE 3001
CMD ["/usr/local/bin/npm", "run", "dev:server"]