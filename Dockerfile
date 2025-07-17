# Use official Node.js base image with Alpine (musl-based)
FROM node:20-alpine

# Install dependencies needed for native module builds
RUN apk add --no-cache python3 make g++

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
