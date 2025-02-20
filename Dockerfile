# Use an official Node.js runtime as a parent image
FROM node:14-slim

# Set the working directory inside the container
WORKDIR /node-docker

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
