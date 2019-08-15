FROM datree-docker.jfrog.io/node:12
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
RUN apt-get install -y postgresql-client
COPY . .
EXPOSE 8000
CMD [ "npm", "start"]