# Use the Node.js 19.7.0 Alpine base image
FROM node:19.7.0-alpine

# Set the environment variable NODE_ENV to production
ENV NODE_ENV=production

# Copy source to container
RUN mkdir -p /usr/app/src

# Copy source code
COPY src /usr/labone/src
COPY package.json /usr/labone
COPY package-lock.json /usr/labone

WORKDIR /usr/labone

# Running npm install
RUN npm install

# Open mapped port
EXPOSE 3000

# Start the process
CMD ["node", "src/index.js"]