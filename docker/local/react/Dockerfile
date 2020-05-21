FROM node

RUN mkdir /frontend/
COPY /frontend/ /frontend/
WORKDIR /frontend/

# Install dependencies
COPY . /frontend/
COPY ["package.json", "yarn.lock*", "./"]

RUN yarn install

# Add rest of the client code


EXPOSE 3000

CMD npm start
