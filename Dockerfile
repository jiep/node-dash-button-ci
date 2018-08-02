FROM arm32v6/alpine:3.7

ENV QEMU_EXECVE 1
COPY ./qemu-arm-static /usr/bin/qemu-arm-static

COPY package.json package-lock.json dash-button.js /app/
WORKDIR /app
RUN ["qemu-arm-static", "/bin/sh", "-c", "apk add --update --no-cache nodejs openrc alpine-sdk make cmake gcc g++ gfortran python py-pip python-dev libpcap-dev"]
RUN ["qemu-arm-static", "/bin/sh", "-c", "npm install"]
CMD ["node", "dash-button.js"]
