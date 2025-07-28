# Use an official Node.js image as the base
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy source code to container
COPY src/ .

# Create package.json automatically (no need for dependencies here)
RUN npm init -y

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
