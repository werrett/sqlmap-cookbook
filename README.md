# sqlmap Cookbook

Cookbook to download and install the latest version of
[sqlmap](http://sqlmap.org/), the SQL injection and database takeover tool,
from Github.

## Requirements

The following cookbooks are prerequisites:

  * apt
  * git
  * python - 2.6.x or 2.7.x required
  * [rbenv](http://github.com/fnichol/chef-rbenv)

Note: Only tested under Ubuntu 12.04 LTS 64-bit.

## Usage

To spin up an Ubuntu install using [Vagrant](http://vagrantup.com):

```
git clone https://github.com/werrett/sqlmap-cookbook.git sqlmap-vm
cd sqlmap-vm
vagrant up --provision
...
vagrant ssh
./sqlmap.py --version
```

## Attributes

  * directory - Where sqlmap will live.
  * url - Github URL to clone sqlmap from.
  * reference - Branch to clone from.
  * clone_timeout - Cloning time out. Needs to be longish.

## Todo

  * Install from Tarball.

## Author

Jonathan Werrett (<jonathan@werrett.hk>)
