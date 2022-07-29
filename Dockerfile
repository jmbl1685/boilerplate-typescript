FROM node:18.4

# RUN echo "Europe/London" > /etc/timezone

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install --force

COPY . .

RUN npm run build

# COPY "config/.env" "./.env"

EXPOSE 3000
CMD [ "npm", "start" ]
