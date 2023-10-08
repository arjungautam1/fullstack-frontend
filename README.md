# Demoapp Frontend
This project was forked from: [arjungautam1/fullstack-frontend](https://github.com/arjungautam1/fullstack-frontend) and will be used for demonstration of DevOps CI/CD automation

## Build and Run
```sh
npm run build
npm install -g serve
serve -s build
```

## Container Build and Run
```sh
docker build -f Containerfile -t demoapp-frontend .
docker run -p 8080:8080 demoapp-frontend
```
