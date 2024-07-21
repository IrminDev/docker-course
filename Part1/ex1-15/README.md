# How to run this docker file
This dockerfile was created to run the project "curistore-frontend", to run this project with its container you only need to clone this project: https://github.com/IrminDev/curi-store.git (the dockerfile only works for the frontend).

# Prerequisites
Install [node](https://nodejs.org/en/download/package-manager) 22

# Production
First of all, you need to generate the static files running `npm run build`

This will generate them into `build` folder.

An example for serving static files:

Use npm package called serve to serve the project in port 8000:
- install: `npm install -g serve`
- serve: `serve -s -l 8000 build`

Test that the project is running by going to <http://localhost:8000>

# Docker hub
This is the docker hub link <https://hub.docker.com/r/irmindev/curistore-frontend>