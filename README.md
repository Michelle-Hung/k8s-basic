# k8s-basic 

### Practice docker command 

```Docker
docker build -t {myimage}:{mytag} .
# "-p" assign port in docker file
docker run -d -p {8801:80} {myimage}:{mytag}
docker push {your-registry}/{your-project}/{image-name}:{tag}
```
