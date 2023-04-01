FROM alpine:latest

RUN apk add nodejs
RUN apk add npm

COPY ./ /var/cloud9

WORKDIR /var/cloud9
RUN npm ci --no-color --quiet

ENV API_HOST=0.0.0.0

EXPOSE 3000

ENTRYPOINT npm start
