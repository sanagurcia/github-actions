# What image do we build from?
# This base image, node:<version>, comes with node & npm installed
FROM node:16 

# dir for holding application code inside image
WORKDIR /app

# install npm dependencies
# 1) copy my local package-lock.json & package.json files to image
COPY package*.json ./

# 2) run npm install inside image (as if on command line)
# 'RUN' is shell form
RUN npm install

# Copy src code to image (make sure to define .dockerignore file with "node_modules" listed)
COPY . .

# set any necessary env variables
ENV PORT=5050

EXPOSE 5050

# only one 'CMD' instruction per Dockerfile
# CMD is exec form -- doesn't start up shell session
# alternative would be: ["node", "server.js"]
CMD ["npm", "start"]