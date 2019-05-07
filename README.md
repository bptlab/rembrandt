# Rembrandt

The meta-repository holding the docs, configuration files and so on.

## Deployment

1. Clone the repository
    ```console
    foo@bar:~$ git clone https://github.com/bptlab/rembrandt
    foo@bar:~$ cd rembrandt
    ```

1. Deploy the service using docker compose / stack: 
    ```console
    foo@bar:~$ docker-compose up
    
    OR
    
    foo@bar:~$ docker stack deploy -c docker-compose.yml rembrandt
    ```
  
## Contributing

### Tools

#### Requirements
- [Node.js](https://nodejs.org/en/)
- [MongoDB](https://www.mongodb.com/download-center/community)
- [Zenhub](https://app.zenhub.com)

#### Reccomendations
- [VS Code](https://code.visualstudio.com/download)
- [VS Code Plugins](https://marketplace.visualstudio.com/vscode)
  - [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - [Beautify css/sass/scss/less](https://marketplace.visualstudio.com/items?itemName=michelemelluso.code-beautifier)
  - [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)
  - [TSLint](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
- [Docker](https://hub.docker.com/?overlay=onboarding)
- [Postman](https://www.getpostman.com/downloads/)

### Project Management

We're using [ZenHub](https://www.zenhub.com/) to manage the rembrandt project.

### Issues & Feature Requests

For new features, please use the *User Story* template. If possible, please assign the corresponding _epic_ to the issue. New issues should always be created in the `New Issues` pipeline.

### Branches
  - When starting a new issue, branch from the current `dev` and create a new branch named `feature/<issue-number>-abc-xyz`
  - When starting a new hotfix, create a new branch named `hotfix/<issue-number>-abc-xyz`. Please keep in mind, that an issue with the *Hotfix* template should be created first.
  - `Feature` branches are merged in the `dev` using pull requests and reviews. Please do not merge unapproved changes!
  - Every two weeks (at the end of each sprint), a new release will be created by merging the current `dev` in the `master` branch.

### StyleGuide and Coding Conventions

Rembrandt repositories are following [style guidelines and coding conventions](https://basarat.gitbooks.io/typescript/content/docs/styleguide/styleguide.html) from [Typescript Deep Dive](https://basarat.gitbooks.io/typescript/), a comprehensive Typescript book. In addition to these guidelines we enforce the following rules:

#### Filename

* Use `PascalCase.ts` for classes
* Use `camelCase.ts` for instances

> Reason: Default export for files is clear

##### Class as default export

**Bad**
```ts
export default class HelloWorld {}

helloWorld.ts
```
**Good**
```ts
export default class HelloWorld {}

HelloWorld.ts
```

##### Instance as default export

**Bad**
```ts
export default const helloWorld: string = 'Hello World!';

HelloWorld.ts
```
**Good**
```ts
export default const helloWorld: string = 'Hello World!';

helloWorld.ts
```
