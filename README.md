# PlaysDev-DevOps-Hackathon

Run this to start container:
```
docker build . --no-cache -t nginx-image      
docker run -p 80:80 --rm nginx-image
```
or use Docker Compose:
```
docker compose up
``` 
URL for requests: `localhost:80`