# Corda Image

## Build
```
$ docker-compose build
```

## Start
```
$ docker-compose up
```
Wait for a while and access [localhost:10009](http://localhost:10009)

## Info

| Node | Port | URL
| ------------- | ------------- | ------------- |  
| A | 10009 | [localhost:10009](localhost:10009) |  
| B | 100012 | [localhost:10012](localhost:10012) |  
| C | 100015 | [localhost:10015](localhost:10015) |

When sending transaction, add `web/example` after port.  
Ex: `http://localhost:10009/web/example`
