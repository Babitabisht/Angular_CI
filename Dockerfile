FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm i
COPY . .
RUN  npm install -g @angular/cli@7.3.9
RUN ["npm","run","build"]

FROM nginx
WORKDIR /app
COPY --from=builder /app/dist/dockerApp   /usr/share/nginx/html
