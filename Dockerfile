FROM node:22

RUN npm install -g openclaw

CMD openclaw gateway run --bind=auto --port=$PORT --allow-unconfigured --set channels.telegram.dmPolicy=open