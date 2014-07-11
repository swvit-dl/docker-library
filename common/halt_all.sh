#!/bin/bash

# Останавливает все запущенные контейнеры

docker rm $(docker ps -a -q)

