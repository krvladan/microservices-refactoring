# Udagram Image Filtering Application

Udagram is a simple cloud application developed alongside the Udacity Cloud Engineering Nanodegree. It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.

This repository is created as part of the "Refactor Udagram App into Microservices and Deploy" project.

## Architecture
The application is refactored into four containers, reflecting the microservice structure:
1. udagram-frontend
2. udagram-reverseproxy
3. udagram-api-feed
4. udagram-api-users

## Quick start
To run the application locally, once all the prerequisites are satisfied, from the repo's root, run `docker-compose up --build`.
Once it's up and running, you can visit `http://localhost:8100` in your web browser to verify that the application is running.

## Prerequisites

### Docker
You will need `docker` and `docker-compose` installed.

### Environment variables
Before running the `docker-compose up --build` you need to set environment variables:

```bash
export POSTGRES_USERNAME=<your_postgres_db_username>
export POSTGRES_PASSWORD=<your_postgres_db_password>
export POSTGRES_HOST=<postgres_host_name>
export POSTGRES_DB=postgres
export AWS_BUCKET=<aws_bucket_name>
export AWS_REGION=<aws_region_name>
export AWS_PROFILE=default
export JWT_SECRET=<jwt_secret_string>
export URL=http://localhost:8100
```

A file named `set_env.sh` has been prepared as an optional tool to help you configure these variables on your local development environment.

### Database
Create a PostgreSQL database either locally or on AWS RDS. Set the config values for environment variables prefixed with `POSTGRES_` in `set_env.sh`.

### S3
Create an AWS S3 bucket. Set the config values for environment variables prefixed with `AWS_` in `set_env.sh`.
