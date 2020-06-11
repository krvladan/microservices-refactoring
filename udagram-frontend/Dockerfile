# Use NodeJS base image
FROM node:12.17.0

# Create app directory in Docker
WORKDIR /usr/src/app

# Copy app from local environment into the Docker image
COPY . .

# Install dependencies in Docker
RUN npm install
RUN npm install -g @ionic/cli

# build
RUN ionic build

# expose frontend port
EXPOSE 8100

# Define Docker’s behavior when the image is run
CMD ionic serve