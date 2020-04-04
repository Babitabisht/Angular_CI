FROM node:alpine

WORKDIR /app

COPY package.json  .

RUN npm i
RUN  npm install -g @angular/cli@7.3.9

COPY  . .
# EXPOSE 4200
CMD ["ng","serve","--host", "0.0.0.0"]
