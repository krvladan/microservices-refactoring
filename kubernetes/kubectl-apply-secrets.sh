#!/bin/bash

export POSTGRES_USERNAME_BASE64=`echo "$POSTGRES_USERNAME" | base64`
export POSTGRES_PASSWORD_BASE64=`echo "$POSTGRES_PASSWORD" | base64`
export POSTGRES_HOST_BASE64=`echo "$POSTGRES_HOST" | base64`
export POSTGRES_DB_BASE64=`echo "$POSTGRES_DB" | base64`
export AWS_BUCKET_BASE64=`echo "$AWS_BUCKET" | base64`
export AWS_REGION_BASE64=`echo "$AWS_REGION" | base64`
export AWS_PROFILE_BASE64=`echo "$AWS_PROFILE" | base64`
export JWT_SECRET_BASE64=`echo "$JWT_SECRET" | base64`
export URL_BASE64=`echo "$URL" | base64`
export AWS_CREDENTIALS_FILE_BASE64=`cat $HOME/.aws/credentials | base64 -w 0`

cat aws-credentials-secret.yaml | envsubst | kubectl apply -f -
cat env-variables-secret.yaml | envsubst | kubectl apply -f -
