# Use official Node.js base image with Alpine (musl-based)
FROM node:20-alpine

# Install git + dependencies for native Node modules
RUN apk add --no-cache git python3 make g++

# Clone the app
RUN git clone https://github.com/Guru322/GURU-Ai /app

# Set working directory
WORKDIR /app

# Install Node.js dependencies
RUN npm install

# App listens on port 5000
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
