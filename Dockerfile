FROM datree-docker.jfrog.io/node:12-buster
WORKDIR /usr/src/app
COPY package.json .
RUN apt-get update
RUN apt-get install -y postgresql-client=11+200+deb10u1
USER node
COPY . .
EXPOSE 8000
CMD [ "npm", "start"]