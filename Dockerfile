FROM node:22-apline
WORKDIR /app
ENV NODE_ENV=development}
ENV PORT=3000}
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3000
ENTRYPOINT ["node", "./out/extension.js"]