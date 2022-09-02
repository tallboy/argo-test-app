FROM node:16

# Create app dir
WORKDIR /usr/src/app

# Install deps
COPY package*.json ./

RUN npm install

# For prod use case (lol)
# RUN npm ci --only=production

# Bundle app src
COPY . .

# Open ports
EXPOSE 8080

# Fire canons
CMD [ "node", "server.js" ]