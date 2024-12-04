# Use the official Node.js image as a base
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Add a simple command to verify Node.js and npm are working
RUN node -v
RUN npm -v

# Run the app
CMD ["node", "app.js"]

# Expose the port
EXPOSE 3005

