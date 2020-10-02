########################
### Builder
########################

FROM node:12 AS build

RUN curl https://install.meteor.com/ | sh

WORKDIR /usr/app
COPY . /usr/app
RUN mkdir /tmp/app && meteor build --allow-superuser --directory /tmp/app
RUN cd /tmp/app/bundle/programs/server && npm install --production

########################
### Runtime container
########################

FROM mhart/alpine-node:12 AS app

WORKDIR /usr/app
COPY --from=build /tmp/app/bundle /usr/app

ENV PORT=3000
EXPOSE $PORT
CMD [ "node", "main.js" ]
