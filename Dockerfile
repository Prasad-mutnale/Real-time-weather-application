FROM node:alpine
WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .

RUN npm run build

ENV NODE_ENV production
ENV PORT 8001

EXPOSE 8001

CMD ["npm","start"]
