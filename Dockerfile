FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80
----
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .


