ARG RUNTIME_IMAGE="registry.access.redhat.com/ubi8/nodejs-18"

# APP
FROM ${RUNTIME_IMAGE}

COPY --chown=default:default public ./public
COPY --chown=default:default src ./src
COPY --chown=default:default package.json ./package.json

RUN npm install
CMD npm start
