FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY server.js .
COPY sum.js .
CMD ["node", "server.js"]

