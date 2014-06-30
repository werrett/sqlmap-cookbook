# Sqlmap Cookbook

Cookbook to download and install the latest version of [sqlmap](http://sqlmap.org/), the SQL injection and database takeover tool, from Github.

## Requirements

The following prequities are brought in by Chef.

Prerequisite cookbooks:

  * [apt](https://github.com/opscode-cookbooks/apt)

Prerequisites packages (from Ubuntu's repositiories):

  * git
  * python

Note: Cookbook only tested under Ubuntu 14.04 LTS 64-bit.

## Usage

Instructions on how to spin up an Ubuntu install with Sqlmap using [Vagrant](http://vagrantup.com):

### Install Vagrant

Install Vagrant 1.5.x from the [Vagrant downloads page](http://www.vagrantup.com/downloads.html)

Install the [Vagrant Berkshelf plugins](https://github.com/berkshelf/vagrant-berkshelf):
```
vagrant plugin install hashie --plugin-version '2.1.1'
vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
vagrant plugin install vagrant-omnibus

```

### Pull down Chef Cookbook & run Vagrant

```
git clone https://github.com/werrett/sqlmap-cookbook.git sqlmap-vm
cd sqlmap-vm
vagrant up --provision
...
vagrant ssh
sqlmap.py --version
```

## Attributes

  * directory - Where sqlmap will live.
  * github.url - Github URL to clone sqlmap from.
  * github.reference - Branch to clone from.
  * github.clone_timeout - Cloning time out. Needs to be longish.

## Todo

  * Do a recipe to install from official tarball releases.

## Author

Jonathan Werrett (<jonathan@werrett.hk>)
