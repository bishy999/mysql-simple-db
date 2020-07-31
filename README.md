# pull and run image
```
sudo docker run --name=my-simple-sqldb --hostname=mysql -e MYSQL_ROOT_PASSWORD=Password1 -p 3306:3306 -d bishy999/my-simple-sqldb:1.2
```


#############################################################################
#          steps to build and deploy simple mysql with docker       #
#############################################################################


Note: this is automatically done via travis (see .travis.yml) but manual steps are listed here for reference


# build image (don't use cache)
```
sudo docker build -t my-simple-sqldb .
```

# list images
```
sudo docker images
```
 
# give terminal your docker hub credentials
```
sudo docker login
```



# tag image

```
sudo docker tag <image ID>  <docker hub username>/<repository><image name>:<version label or tag>

e.g.

sudo docker tag my-simple-sqldb bishy999/my-simple-sqldb:1.2
```


# push image to docker hub

```
docker push <docker hub username>/<repository><image name>

e.g. on Mac

sudo docker push bishy999/my-simple-sqldb:1.2
```


# check docker hub

```
image used in example here is stored on docker hub e.g https://hub.docker.com/r/bishy999/golang
```


# create a container from your image and run it
```
sudo docker run --name=my-simple-sqldb --hostname=mysql -e MYSQL_ROOT_PASSWORD=Password1 -p 3306:3306 -d bishy999/my-simple-sqldb:1.2
```