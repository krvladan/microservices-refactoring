# Use NodeJS base image
FROM node:12.17.0

# Create app directory in Docker
WORKDIR /usr/src/app

# Copy app from local environment into the Docker image
COPY . .

# Install dependencies in Docker
RUN npm install

# build
RUN npm run build

# expose frontend port number
EXPOSE 4200

# Define Docker’s behavior when the image is run
CMD npm run start