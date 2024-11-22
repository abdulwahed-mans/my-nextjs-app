# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Expose the application port
EXPOSE 3000

# Default command for development
CMD ["npm", "run", "dev"]
