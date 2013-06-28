#
# Cookbook Name:: opencrx
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "java"
include_recipe "ark"


ark "ant" do
  url node['ant']['url']
  checksum node['ant']['checksum']
  home_dir node['ant']['home']
  version node['ant']['version']
  append_env_path true
  action :install
end

template "/home/vagrant/install-opencrx.sh" do
  source "install-opencrx.sh"
  mode 0755
end

template "/home/vagrant/start-opencrx.sh" do
  source "start-opencrx.sh"
  mode 0755
end

remote_file "/home/vagrant/opencrxServer-2.11.0-installer.jre-1.6.jar" do
  source "http://sourceforge.net/projects/opencrx/files/opencrx/2.11.0/opencrxServer-2.11.0-installer.jre-1.6.jar/download"
  mode 0666
  action :create_if_missing
end
