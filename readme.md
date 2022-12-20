# Heroku Exploit Root Access

A [Heroku](https://www.heroku.com/) install of [Ubuntu 20.04 (LTS)](https://releases.ubuntu.com/20.04/).

Do an automated deploy to Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Run Locally

Install [Docker](https://docs.docker.com).

Build and run the container with Docker.

## Deploy to Heroku

Install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli).

Create a Heroku app:
```bash
heroku create
```

Note the Heroku app name, and add the Heroku Git repository as a remote to this Git repository:
```bash
heroku git:remote -a [heroku-app-name]
```

Set the app's stack to container:
```bash
heroku stack:set container -a [heroku-app-name]
```

Deploy the app:
```bash
git push heroku master
```

