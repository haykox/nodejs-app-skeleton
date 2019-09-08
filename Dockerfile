FROM node:12.7.0-alpine

ARG USER=node

USER $USER

ARG APP_NAME=nodejs-app-skeleton
ARG APP_DIR=/home/$USER/apps/$APP_NAME

RUN mkdir -p $APP_DIR

WORKDIR $APP_DIR

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8080

COPY docker/nodejs/run.sh /usr/local/bin

CMD ["run.sh"]
