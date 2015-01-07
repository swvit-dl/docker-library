#!/bin/bash

env $(cat .env) PROJECT_NAME=$1 FIG_ARGS=${@:2}
 		/bin/bash -c '$(cd $FIG_APPS_DIR/$PROJECT_NAME && fig -f fig.yml $FIG_ARGS)'
