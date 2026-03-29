FROM node:22

RUN npm install -g openclaw

RUN mkdir -p /root/.openclaw

ENV NODE_ENV=production

CMD openclaw gateway run --bind=auto --port=${PORT:-3000}