FROM node:18.18-alpine3.18
#  RUN addgroup app && adduser -S -G app app
#  USER app
 WORKDIR /app
 COPY package*.json .
 RUN npm install
 COPY . .
 ENV RESEND_API_KEY=re_ALDTkHRD_Jo2C49tvcpobKRJroEfzkVjn
 EXPOSE 3000
 CMD ["npm", "run","build"]