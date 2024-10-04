FROM node:20-slim AS base
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci -f
COPY . .
CMD [ "npm", "run", "dev" ]