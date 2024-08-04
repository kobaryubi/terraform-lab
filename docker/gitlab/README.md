## Start GitLab

```sh
docker run -d \
  --platform linux/amd64 \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume ./config:/etc/gitlab \
  --volume ./logs:/var/log/gitlab \
  --volume ./data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ce:16.7.9-ce.0
```

## Check Logs

```sh
docker logs -f gitlab
```

## Retrieve Initial Password

```sh
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```

## Pushing a GitLab Container Image to Google Container Registry

```sh
gcloud auth login
gcloud auth configure-docker us-central1-docker.pkg.dev
docker pull gitlab/gitlab-ce:16.7.9-ce.0
docker tag gitlab/gitlab-ce:16.7.9-ce.0 us-central1-docker.pkg.dev/masahiko-kobayashi/gitlab-repo/gitlab-ce:16.7.9-ce.0
docker push us-central1-docker.pkg.dev/masahiko-kobayashi/gitlab-repo/gitlab-ce:16.7.9-ce.0
```
