# NVM as non root
#
# VERSION     0.1

FROM          ubuntu:12.04
MAINTAINER    Friedel Ziegelmayer <fziegelmayer@codio.com>

# Install dependencies
RUN apt-get update  
RUN apt-get install git curl bzip2 man -yy

# Setup worker user
RUN useradd -m -p secret worker  
RUN chsh -s /bin/bash worker  
RUN su - worker -c "touch ~/.bash_profile"

# Install nvm
RUN su - worker -c "curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh"  
RUN su - worker -c "echo '[ -s \$HOME/.nvm/nvm.sh ] && . \$HOME/.nvm/nvm.sh' > ~/.profile"

# Install node
RUN su - worker -c "nvm install 0.10"  
RUN su - worker -c "nvm alias default 0.10"

# Start the shell as the worker user
#
# Usage: docker run -t -i $IMAGE
CMD su - worker
