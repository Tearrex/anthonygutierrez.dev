FROM node:16-slim

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173:3000

CMD ["npm", "run", "dev", "--", "--host"]