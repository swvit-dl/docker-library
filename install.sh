#!/bin/bash

echo "
FIG_AUTHOR_PREFIX=your_name_in_env
FIG_APPS_DIR=$(readlink -f apps)
FIG_DATA_DIR=$(readlink -f data)
FIG_IMAGES_DIR=$(readlink -f images)
" > .env
