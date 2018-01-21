# docker-test
Testing for a flask app

## Create a docker image with contents of the current directory
`docker build -t flask_app .`

## Check your images
`docker images`

## Run the app and map ports
`docker run -p 4000:8080 flask_app`
