


# Use an official Node.js 20 runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Build the app for production
RUN npm run build

# Start the app
CMD ["npm", "run", "dev"]

EXPOSE 5000

