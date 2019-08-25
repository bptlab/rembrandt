FROM node:alpine AS builder

WORKDIR /usr/src/rembrandt-frontend
COPY rembrandt-frontend .
RUN npm install && \
    npm run build

WORKDIR /usr/src/rembrandt-backend
COPY rembrandt-backend .
RUN npm install && \
    npm run build && \
    mkdir ./dist && \
    mv ./build ./dist/build && \
    mv ./tsconfig.json ./dist/tsconfig.json && \
    mv ./package.json ./dist/package.json

FROM node:alpine
WORKDIR /usr/src/rembrandt
COPY --from=builder /usr/src/rembrandt-backend/dist .
COPY --from=builder /usr/src/rembrandt-frontend/dist public
RUN mkdir dataExchange && \
    npm install --production
CMD npm run production