#
# Cookbook Name:: sqlmap
# Recipe:: default
#
# Copyright (C) 2014 Jonathan Werrett
#

package 'git'
package 'python'

sqlmap_directory = node['sqlmap']['directory'] || "/opt/sqlmap"
github_url = node['sqlmap']['github']['url']

git "#{sqlmap_directory}" do
   repository github_url
   reference  node['sqlmap']['github']['reference'] || "master"
   timeout    node['sqlmap']['github']['clone_timeout']
   action     :sync
end

template "/etc/profile.d/sqlmap.sh" do
  source 'sqlmap.sh.erb'
  owner 'root'
  group 'root'
  mode  '0755'
end
