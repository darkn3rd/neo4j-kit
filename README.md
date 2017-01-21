# **Neo4j Kit**

This is a small development environment that supports both Docker and Vagrant.  This brings up a single node Neo4j.

## **Vagrant Way**

Vagrant needs to be installed (see below):

1. `vagrant up`
2. `./provision/site.yml`
3. Point browser to `http://172.16.0.78:4747`

## **Docker Way**

Docker Compose needs to be installed (see below):

1. `docker-compose up -d`
2. Get IP address for containers
   * On Mac OS X: `DOCKER_HOST_IP=$(docker-machine ip)`
   * On Linux Linux: `DOCKER_HOST_IP=127.0.0.1`
3. Point browser to `http://${DOCKER_HOST_IP}:4747`

## **Prerequsites**

For Mac OS X, there's an install script `./install.sh`, which installs [Homebrew](http://brew.sh/) and [Cask](https://caskroom.github.io/) package managers to install the needed prerequisites.  

Otherwise, you can manually run and install the following pieces:

* Vagrant
   * [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)
   * [Vagrant](https://www.vagrantup.com/)
   * [Ansible](http://docs.ansible.com/ansible/intro_installation.html)
* Docker
   * Mac OS X
     * [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
     * [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)
   * Linux
     * [Docker Engine](https://docs.docker.com/engine/installation/)
     * [Docker Compose](https://docs.docker.com/compose/install/)
