# Use a base Node.js image
FROM node:16

# Install Apache and other dependencies
RUN apt-get update && apt-get install -y apache2 curl

# Install Node.js and npm
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

# Install PM2 globally
RUN npm install -g pm2

# Set up the working directory
WORKDIR /app

# Copy your application files
COPY package*.json ./
RUN npm install
COPY . .

# Start the Node.js application using PM2
CMD ["pm2", "start", "node.js", "--no-daemon"]

# Expose the port that your Node.js application is listening on
EXPOSE 3001
