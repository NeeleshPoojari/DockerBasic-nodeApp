# specify a base image
 FROM node:alpine

WORKDIR /usr/app
# copy current directory files to current running container
# install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
 CMD [ "npm", "start" ]


