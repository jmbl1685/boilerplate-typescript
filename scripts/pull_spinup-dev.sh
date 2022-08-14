sudo docker rmi $(sudo docker images 'boilerplate-typescript' -a -q)
sudo docker stop $(sudo docker ps -a -q  --filter ancestor=boilerplate-typescript)
sudo docker rm $(sudo docker ps -a -q  --filter ancestor=boilerplate-typescript)
sudo docker build . -t boilerplate-typescript
sudo docker run -d -p 3000:3000 boilerplate-typescript
sudo docker ps
