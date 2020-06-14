# Use NodeJS base image
FROM node:12.17.0

# Create app directory in Docker
WORKDIR /usr/src/app

# Copy app from local environment into the Docker image
COPY . .

# Install dependencies in Docker
RUN npm ci

# Set the API’s port number
EXPOSE 8091

# Define Docker’s behavior when the image is run
CMD npm run prod