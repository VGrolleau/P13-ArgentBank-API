FROM node:10
WORKDIR /usr/src/app
RUN mkdir server
COPY package.json .env swagger.yaml ./
RUN /usr/local/bin/npm install
COPY server/ server/
EXPOSE 3001
CMD [ "node", "./server/server.js" ]