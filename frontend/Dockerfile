FROM node

WORKDIR /app/

COPY package.json yarn.lock /app/
COPY . /app
RUN yarn install

RUN yarn start

EXPOSE 3000

