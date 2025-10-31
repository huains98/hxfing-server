FROM node:latest

WORKDIR /app

COPY src ./
COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]