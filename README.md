# pull and run image
```
sudo docker run --name=my-simple-sqldb -d -p 8080:8080 bishy999/golang:1.1-my-simple-sqldb
```


# check app is working via browser/cli
 
```
http://localhost:8080
curl http://localhost:8080
```


#############################################################################
#          steps to build and deploy simple golang webapp with docker       #
#############################################################################


Note: this is automatically done via travis (see .travis.yml) but manual steps are listed here for reference


# build & tag image (don't use cache)
```
sudo docker build --no-cache -t my-simple-sqldb .
```

# list images
```
sudo docker images
```
 

# create a container from your image and run it
```
sudo docker run --name=my-simple-sqldb --hostname=mysql -e MYSQL_ROOT_PASSWORD=Password1 -p 3306:3306 -d bishy999/my-simple-sqldb:1.0
```


# give terminal your docker hub credentials
```
sudo docker login
```


# push image to docker hub

```
docker push <docker hub username>/<repository><image name>

e.g. on Mac

sudo docker push bishy999/my-simple-sqldb:1.0
```


# check docker hub

```
image used in example here is stored on docker hub e.g https://hub.docker.com/r/bishy999/golang
```
