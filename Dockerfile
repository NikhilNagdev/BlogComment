FROM node:10.15.0-alpine

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 4002
CMD ["npm", "start"]