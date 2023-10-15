FROM node:18.18-alpine3.18
 RUN addgroup app && adduser -S -G app app
 USER app
 WORKDIR /src
 COPY package*.json .
 RUN npm install
 COPY . .
 EXPOSE 3000
 CMD ["npm", "start"]