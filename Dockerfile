FROM node:22

# instaleaza openclaw
RUN npm install -g openclaw

# creeaza folder config
RUN mkdir -p /root/.openclaw

# seteaza variabile default (evita erori)
ENV NODE_ENV=production

# pornire corecta pentru Railway
CMD sh -c "openclaw setup --headless && openclaw gateway run --bind=0.0.0.0 --port=${PORT:-3000}"