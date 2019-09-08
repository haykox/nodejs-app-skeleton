# Node.js Web Application Skeleton

Skeleton to quickly have a Containerized Node.js Web Application up and running using Express.js.

## How to run

**(Replace example App name *cool-api* with your own)**

1. `git clone git@github.com:haykox/nodejs-app-skeleton.git cool-api`
2. `cd cool-api`
3. In *Dockerfile*
   - Set `ARG APP_NAME=cool-api`
4. In *package.json*
   - Set `"name": "cool-api"`
   - Set `"description": "Cool Node.js API for my backend"`
5. In *docker-compose.yml*
   - Replace `nodejs-app-skeleton:` with `cool-api:`
   - Set `image: cool-api`
   - Set `- {PATH_TO_PROJECT_DIRECTORY}/src:/home/node/apps/cool-api/src`
6. `docker build -t cool-api .`
7. `docker-compose up cool-api`

Visit [http://localhost:8080](http://localhost:8080) and _**Hello World!!!**_ should be displayed on the page.

That's it! The Express.js app is now running in Docker container and is ready to serve requests.
