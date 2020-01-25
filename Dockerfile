FROM node:13-alpine3.10

COPY . /var/www/

WORKDIR /var/www/

RUN npm install

EXPOSE 3000

CMD ['node']