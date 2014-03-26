#
# Cookbook Name:: sqlmap
# Attributes:: sqlmap
#
# Copyright (C) 2014 Jonathan Werrett
#

default['sqlmap']['directory'] = "/opt/sqlmap"

default['sqlmap']['github']['url']           = "https://github.com/sqlmapproject/sqlmap.git"
default['sqlmap']['github']['reference']     = "master"
default['sqlmap']['github']['clone_timeout'] = 600
