#Description
terraform with git, bash and openssh, removed entrypoint so it can be used in a pipeline as well 


#Build from Dockerfile
Simply build the image with the provided Dockerfile using the following commands: 

```bash
docker build -t patrickl/terraform:latest .
docker push patrickl/terraform
```