docker-rserve
=============

Dockerfile for build a Rserve


Install Rserve as rserve0:

```
git clone https://github.com/Predictia/docker-rserve.git
cd docker-rserve
git checkout -b 14.04-java7 origin/14.04-java7
sudo docker build --tag="predictia/rserve:14.04-java7" .
sudo docker run -d --name="rserve0" -p 6311:6311 predictia/rserve:14.04-java7
```
