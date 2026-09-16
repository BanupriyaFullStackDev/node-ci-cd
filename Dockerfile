FROM node:alpine-20
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["node", "sum.js"]