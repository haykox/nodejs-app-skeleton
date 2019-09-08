#!/bin/sh

if [ -z "$APP_ENV" ]; then
  echo "APP_ENV must be set to dev, qa or prod"
  exit 1
fi

APP_ENV=`echo $APP_ENV | tr '[:upper:]' '[:lower:]'`

case "$APP_ENV" in
  prod)
    echo "We are in $APP_ENV. Serving the App..."
    npm run start-prod
    ;;
  qa)
    echo "We are in $APP_ENV. Serving the App..."
    npm run start-qa
    ;;
  dev)
    echo "We are in $APP_ENV. Serving the App..."
    npm run start-dev
    ;;
  *)
    echo "APP_ENV must be set to dev, qa or prod"
    exit 1
    ;;
esac

