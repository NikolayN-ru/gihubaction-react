FROM node:18 as build
WORKDIR /opt/app
ADD package*.json ./
RUN npm ci
ADD . .
CMD ["npm", "run", "start"]
# RUN npm run start

# FROM node:18
# WORKDIR /opt/app
# COPY --from=build /opt/app/build ./build
# ADD package*.json ./
# RUN npm ci
# CMD ["node", "./dist/main.js"]