# k8s-basic 

### Practice docker command 

```Docker
docker build -t {myimage}:{mytag} .
# "-p" assign port in docker file
# "-d" Run container in background and print container ID (option)
docker run -d -p {8801:80} {myimage}:{mytag}
docker push {your-registry}/{your-project}/{image-name}:{tag}
```
