```sh
mkdir -p srv/gitlab
export GITLAB_HOME=$(pwd)/srv/gitlab
# rm -rf srv/gitlab/*
docker run -d \
  --platform linux/amd64 \
  --hostname gitlab.example.com \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.example.com'" \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ce:16.7.9-ce.0
docker logs -f gitlab
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```
