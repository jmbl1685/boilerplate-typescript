docker rmi $(docker images 'boilerplate-typescript' -a -q)
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build . -t boilerplate-typescript
docker run -d -p 3000:3000 boilerplate-typescript
