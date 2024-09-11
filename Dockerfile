# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json /app/

# Install the dependencies
RUN npm install

# Copy the source code to the container
COPY . /app

# Expose port 3000
EXPOSE 3000

# Set the command to run the app
CMD [ "node", "app.js" ]