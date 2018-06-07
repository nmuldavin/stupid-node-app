from node:10.3.0-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN npm install -g -s --no-progress yarn && \
  yarn && \
  yarn cache clean

COPY . .
expose 3000
CMD ["yarn", "start"]
