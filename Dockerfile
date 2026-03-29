FROM node:22

RUN npm install -g openclaw

ENV NODE_ENV=production

CMD openclaw gateway run --allow-unconfigured --bind=auto --port=${PORT:-3000}