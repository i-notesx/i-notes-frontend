
FROM node:18

WORKDIR /app

RUN npm config set registry https://registry.npmmirror.com

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080