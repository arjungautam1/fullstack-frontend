# Demoapp Frontend
This project was forked from: [arjungautam1/fullstack-frontend](https://github.com/arjungautam1/fullstack-frontend) and will be used for demonstration of DevOps CI/CD automation

## Dependencies
1. [demoapp-backend](https://github.com/paul-gilber/demoapp-backend)

## Build and Run
```sh
docker build -f Containerfile -t demoapp-frontend .
docker run -p 8080:8080 demoapp-frontend
```

## Changes
1. Setup of [Visual Studio Code](https://code.visualstudio.com/) [Dev Container](https://code.visualstudio.com/docs/devcontainers/containers). See [devcontainer.json](./.devcontainer/devcontainer.json)
2. Replacement of `localhost` hostname for backend with `demoapp-backend`
3. Creation of [Containerfile](./Containerfile)
