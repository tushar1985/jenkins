# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the rest of your application files
COPY . /app

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
