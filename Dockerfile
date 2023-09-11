# Use an official Node.js 16 runtime as the base image
FROM node:16

# Create a working directory for your application
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port that your Node.js application will listen on (if applicable)
EXPOSE 3000

# Define the command to start your Node.js application
CMD ["npm", "start"]
