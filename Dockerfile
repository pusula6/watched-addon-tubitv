FROM node:12
LABEL version="1.9"
WORKDIR /code
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build
CMD npm run start
