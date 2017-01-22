# **Neo4j Kit**

This is a small development environment that supports both Docker and Vagrant.  This brings up a single node Neo4j.

## **Vagrant Way**

This installs Neo4J on guest Ubuntu system using Vagrant to manage the virtual guests.  Use the steps below:

1. Start the Guest System: `vagrant up`
2. Provision All Systems: `./provision/site.yml`
3. Point browser to `http://172.16.0.78:7474`

## **Docker Way**

Docker Compose needs to be installed (see below):

1. Start up Neo4j container: `docker-compose up -d`
2. Get IP address for container
   * On Mac OS X: `DOCKER_HOST_IP=$(docker-machine ip)`
   * On Linux Linux: `DOCKER_HOST_IP=127.0.0.1`
3. Point browser to `http://${DOCKER_HOST_IP}:7474`

## **Docker + Vagrant**

This is running docker on a virtual guest system to launch a Neo4J container.

1. Start the Guest System: `vagrant up`
2. Base Provisioning: `ansible-playbook provision/playbooks/common.yml`
3. Start Container with Docker Compose: `ansible-playbook provision/playbooks/neo4j_compose.yml`
4. Point browser to `http://172.16.0.78:7474`

## **Prerequsites**

For Mac OS X, there's an install script `./install.sh`, which installs [Homebrew](http://brew.sh/) and [Cask](https://caskroom.github.io/) package managers to install the needed prerequisites.  

Otherwise, you can manually run and install the following pieces:

* Neo4j using Vagrant
   * [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox),
     [Vagrant](https://www.vagrantup.com/),
     [Ansible](http://docs.ansible.com/ansible/intro_installation.html)
* Neo4j using Docker
   * Mac OS X
     * [Docker Toolbox](https://www.docker.com/products/docker-toolbox),
       [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)
   * Linux
     * [Docker Engine](https://docs.docker.com/engine/installation/),
       [Docker Compose](https://docs.docker.com/compose/install/)
