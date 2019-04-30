# Rembrandt

The meta-repository holding the docs, configuration files and so on.

## Deployment

1. Clone the repository
    ```console
    foo@bar:~$ git clone https://github.com/bptlab/rembrandt
    foo@bar:~$ cd rembrandt
    ```

1. Deploy the service using docker compose / stack: 
    ``````console
    foo@bar:~$ docker-compose up
    
    OR
    
    foo@bar:~$ docker stack deploy -c docker-compose.yml rembrandt
    ```
  
## Contributing

### Requirements
- [Node.js](https://nodejs.org/en/)
- [MongoDB](https://www.mongodb.com/download-center/community)
- [Zenhub](https://app.zenhub.com)

### Reccomendations
- [VS Code](https://code.visualstudio.com/download)
- [VS Code Plugins](https://marketplace.visualstudio.com/vscode)
  - [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Beautify css/sass/scss/less](https://marketplace.visualstudio.com/items?itemName=michelemelluso.code-beautifier)
  - [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)
  - [TSLint](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
- [Docker](https://hub.docker.com/?overlay=onboarding)
- [Postman](https://www.getpostman.com/downloads/)
