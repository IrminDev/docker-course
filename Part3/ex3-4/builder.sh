#!/bin/sh
# Usage: ./builder.sh <repo_link> <tag> 

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./builder.sh <repo_link> <tag>"
    exit 1
fi

repo_link=$1
tag=$2

# Clone the repo
git clone $repo_link

# Build the docker image
cd $(basename $repo_link .git)
docker build -t $(basename $repo_link .git) .

# Push the docker image to dockerhub
# Put the credentials to the docker login command
docker login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD

docker tag $(basename $repo_link .git) $tag
docker push $tag

# Remove the cloned repo
cd ..
rm -rf $(basename $repo_link .git)