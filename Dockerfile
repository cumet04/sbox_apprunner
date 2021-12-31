FROM node:16.13.1

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./package-lock.json ./
RUN npm ci --production

COPY . /app

EXPOSE 3000
CMD ["node", "app.js"]
