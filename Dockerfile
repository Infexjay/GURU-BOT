FROM quay.io/gurusensei/gurubhay:latest

# Set working directory
WORKDIR /app

# Copy everything from your repo (Koyeb already cloned it)
COPY . .

# Install dependencies (use linuxmusl only if needed)
RUN npm install --platform=linuxmusl

# Expose port
EXPOSE 5000

# Start the bot
CMD ["npm", "start"]
