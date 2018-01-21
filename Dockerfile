# python runtime image from dockerhub
FROM python:3.6-alpine

# working directory to /app
WORKDIR /app

# copy current directory to container at /app
ADD . /app

# install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 80 available to world
EXPOSE 80

# define environment variables
ENV http_proxy http://proxy62.iitd.ac.in:3128
ENV https_proxy https://proxy62.iitd.ac.in:3128

#run app.py when container is launched.

CMD ["python", "app.py"]