FROM node:latest

WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN npm install -g pnpm@9

RUN pnpm install

RUN pnpm run build

EXPOSE 8080

CMD ["pnpm", "start"]
