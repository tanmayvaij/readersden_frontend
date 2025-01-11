FROM node:23-alpine3.21
WORKDIR /app
COPY ./package.json ./yarn.lock ./
RUN yarn
COPY . .
RUN yarn build
CMD yarn start
