# kustomize docker

Docker image useful to integrate in build pipelines

## Running

```bash
docker run --rm mariancraciun/kustomize-docker:latest

docker run --rm mariancraciun/kustomize-docker:latest \
    kustomize edit set image nginx=nginx:1.19.6
```

## Building

```
docker build \
    --tag mariancraciun/kustomize-docker:latest .
```