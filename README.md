# mm-docker-elasticsearch
Run the elasticsearch server with ec2-discovery and repository-s3 plugins


## Linux
* Disable swapping - sudo swapoff -a
* File descriptors - sysctl -w vm.max_map_count=262144

## Docker-Compose
See the template for an example on how to run the conatiner with proper variables
