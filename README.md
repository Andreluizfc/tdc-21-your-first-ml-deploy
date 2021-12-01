# Your First ML App Deploy

## 1 RUN LOCALLY

### Requirements
1. Python
2. Virtual Environment

### Configure a new Python Virtual Environment and Run

Create New Virtual Environment (Venv) and Install Dependencies
```
python3 -m venv name_of_your_venv
source name_of_your_venv/bin/activate
pip install -U pip
python -m pip install --upgrade setuptools
pip install -r requirements.txt -U
```
Call the app initialization
```
cd app/
python3 web_server.py
```

## 2 RUN LOCALLY WITH DOCKER

### Requirements
1. Docker Desktop

### Build Docker Image
The file named Dockerfile contains all the instructions
to build a Docker image. Navigate to root of the project and run:
```
docker build -t ml_model:1.0 .
```
Then run the docker image on port 8080:
```
docker run -p 8080:8080 ml_model:1.0
```

## 3 RUN ON CLOUD WITH HEROKU

### Requiriments
1. [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)

### Deploy to Heroku

1. Install heroku Comand Line Interface (CLI).
2. Login to Heroku. `heroku login -i`
3. Update to beta. `heroku update beta`
4. Install plugin-manifest. `heroku plugins:install @heroku-cli/plugin-manifest`
5. Create your app `heroku create YOUR-APP-NAME --manifest`
6. Check if app has been created. Your app should be listed. `heroku apps`
7. Update Remote `heroku git:remote -a YOUR-APP-NAME`
8. Publish your app. `git push heroku main`
9. Check app status. `heroku logs -a YOUR-APP-NAME`

Now you can visit you deployed app in the URL Heroku made for you.
https://YOUR-APP-NAME.herokuapp.com/
