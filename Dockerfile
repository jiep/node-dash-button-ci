FROM arm32v6/alpine:3.7

RUN apk add --update nodejs
RUN apk add --update openrc alpine-sdk make cmake gcc g++ gfortran python py-pip python-dev libpcap-dev

COPY package.json package-lock.json dash-button.js /app/

WORKDIR /app

RUN npm install

CMD ["node", "dash-button.js"]
