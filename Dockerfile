FROM node:14-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install -g nodemon
COPY . .
EXPOSE 3001
ENV NODE_OPTIONS=--unhandled-rejections=strict
CMD ["npm", "start"]

