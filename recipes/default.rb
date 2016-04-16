#
# Cookbook Name:: directory
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Create the webusrs
group 'webusrs' do
  action :create
end

# Create the coimbato user
user 'coimbato' do
  comment 'Srinivas Coimbatore'
  gid 'webusrs'
  home '/home/coimbato'
  shell '/bin/bash'
end

# Install apache2
package 'apache2'

# Start apache2 and make sure that the
# service will start after a reboot
service 'apache2' do
  action [:start, :enable]
end
