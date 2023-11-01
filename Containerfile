ARG BUILD_IMAGE="registry.access.redhat.com/ubi8/nodejs-18"
ARG RUNTIME_IMAGE="registry.access.redhat.com/ubi8/nodejs-18"

# Build
FROM ${BUILD_IMAGE} as build
WORKDIR /build

COPY package.json ./package.json
COPY public ./public
COPY src ./src

RUN npm install \
    && npm run build


# APP
FROM ${RUNTIME_IMAGE}
WORKDIR /app

COPY --from=build --chown=default:default /build/build ./build

RUN npm install -g serve
CMD serve -n -s build -l tcp://0.0.0.0:8080
