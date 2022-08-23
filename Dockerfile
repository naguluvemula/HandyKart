# FROM node:16

# WORKDIR /reactBuild

# COPY package.json ./

# RUN npm install serve

# EXPOSE 3000

# CMD [ "serve","-s","build" ]

FROM node:16

WORKDIR /reactSrc

COPY package.json ./
COPY package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]