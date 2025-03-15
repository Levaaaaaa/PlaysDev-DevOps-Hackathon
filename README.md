# PlaysDev-DevOps-Hackathon

Run this to start container:
```      
docker network playsdev-devops-hackathon_my-network
```
```
docker run --network playsdev-devops-hackathon_my-network -p 8080:80 --name my-apache laniv/playsdev-apache
```
```
docker run --network playsdev-devops-hackathon_my-network -p 80:80 -p --name my-nginx 443:443 laniv/playsdev-nginx
```
or use Docker Compose:
```
docker compose up
``` 
URL for requests: `localhost:80`


## Best practices

- Added specified base image versions
- Utilized .dockerignore to exclude unnecessary files (*.md, *.tmp)
- Targeted copying, not whole directory
- Using EXPOSE to expose specific ports
