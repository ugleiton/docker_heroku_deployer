# Para uso em implantações heroku 


## Modelo CI/CD GitLab

!!! note "Variáveis CI/CD GitLab"
    Configure as variáveis CI/CD no gitlab:
    HEROKU_APPNAME = nome do aplicativo no heroku.
    HEROKU_API_KEY = token de autorizações que você criou para interagir com a API Heroku, disponíveis na configuração do usuário.


- Modelo arquivo de CI/CD `.gitlab-ci.yml` para o repositório gitlab:
```yaml
variables:
  GIT_DEPTH: 1
  CI: 'false'

stages:
  - deploy

deploy-heroku:
  image: ruby:latest
  stage: deploy
  script:
    - echo "Publicando no heroku"
    - dpl --provider=heroku --app=$HEROKU_APPNAME --api-key=$HEROKU_API_KEY
```
   