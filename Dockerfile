# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the build artifacts from your local machine to the container
COPY build/ ./build/

# Expose port 80 for the React app
EXPOSE 80

# Define the command to run your React app
CMD ["npm", "start"]
