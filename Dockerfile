FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm i
COPY . .
RUN ["npm","run","build"]

FROM nginx
WORKDIR /app
COPY --from=builder /app/dist/dockerApp   /usr/share/nginx/html
