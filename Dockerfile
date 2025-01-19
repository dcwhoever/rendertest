FROM node:20.10

WORKDIR /app

#COPY . .
COPY index.js package.json ./

USER root

EXPOSE 3000

RUN apt-get update -y && \
    apt-get install -y curl && \
    chmod 777 /app/index.js && \
    chmod -R 777 /app && \
    npm install
 
    
CMD ["node", "index.js"]
