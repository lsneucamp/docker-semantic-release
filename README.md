# docker-semantic-release
Dockerized Semantic Release


```
docker run --rm  -e GIT_USERNAME=lsneucamp -e GIT_EMAIL=lucianoneucamp@gmail.com  -v $HOME/.ssh:/root/.ssh -v $(pwd):/repo lsneucamp/docker-semantic-release  
```