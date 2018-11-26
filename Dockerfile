# You can tweak it

FROM node:10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV TERM xterm
ENV NODE_ENV production

COPY . .

RUN ./scripts/build-image.sh

# TODO Specify Your Port
EXPOSE 1337

CMD ["node","server/ssr-server.js"]
