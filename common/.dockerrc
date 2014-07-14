
# return the IP address of the specific container
# $ dip 72bbff4d768c
# 172.17.0.3
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# runs a daemonized container
# Example, dkd $IMAGE
alias dkd="docker run -d -P"

# runs an interactive container
# Example, dki ubuntu /bin/bash
alias dki="docker run -t -i -P"

# Останавливает все запущенные контейнеры
drm() { docker rm $(docker ps -q -a); }


# Removing images
dri() { docker rmi $(docker images -q); }

# Docker build function
db() { docker build -t="$1" .; }

