FROM node:22

RUN npm install -g openclaw

WORKDIR /root

COPY . .

CMD openclaw gateway run --bind=auto --port=$PORT --allow-unconfigured