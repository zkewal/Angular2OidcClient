# Angular2OidcClient

This project was generated with [angular-cli](https://github.com/angular/angular-cli) version 1.0.0-beta.11-webpack.2.

## Setup
1.  clone the repo
2.  navigate to the projects root dir.
```bash
cd Angular2OidcClient
```
3.  then install packages
```bash
npm i
```
4.  you will notice I added an extra folder to the project `oidc-client-@types` copy the contents of that folder, then navigate to node_modules/@types. Create a folder inside the @types folder named oidc-client and paste the copied contents inside that folder.
    (side note if you're using vs code and have not updated to typescript 2.0, you need to change your workspace preferences to the following.... this will remove the errors generated by the IDE.)
    ```
    {
        "typescript.tsdk": "./node_modules/typescript/lib"
    }
    ```
5.  Once these steps are complete make sure the settings inside `src/app/shared/services/auth.service.ts#L165` are set to your IdentityServer settings.
6.  Once these steps are complete run `ng b` followed by `ng s`. I added a brief section at the bottom of the auth service to show how to make authenicatied request using the Angular 2 request pipe line.

## Additonal Info
I also added a protected route to show how you can use this client to protect routes and redirect to unauthorized pages.


##  Side Notes
This project was created for demonstration purposes to show how to use the oidc-client that was created by the IdentityModel team. If you have any questions feel free to add it to the issues section. Also if there is something you would like to add to the repo submit a pull request and if it doesn't break anything I will accept it.
    

## Development server
Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive/pipe/service/class`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/). 
Before running the tests make sure you are serving the app via `ng serve`.

## Deploying to Github Pages

Run `ng github-pages:deploy` to deploy to Github Pages.

## Further help

To get more help on the `angular-cli` use `ng --help` or go check out the [Angular-CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
