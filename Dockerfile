FROM node:22-alpine3.21
WORKDIR /app
COPY ./package ./yarn.lock ./
RUN yarn
COPY . .
RUN yarn build
CMD yarn start
