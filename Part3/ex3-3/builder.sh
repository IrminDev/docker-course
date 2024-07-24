# Usage: ./builder.sh <repo_link> <tag> 

# Check if the number of arguments is valid
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
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
docker login
docker tag $(basename $repo_link .git) $tag
docker push $tag

# Remove the cloned repo
cd ..
rm -rf $(basename $repo_link .git)