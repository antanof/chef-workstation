package 'tree' do
  action :install
end

package 'emacs' do
  action :install
end

package 'ntp' do
  action :install
end

package 'vim-enhanced'do
  action :install
end

package 'nano' do
  action :install
end

package 'git' do
  action :install
end

service 'ntpd' do
  action [ :start, :enable ]
end

file '/etc/motd' do
  content 'This server is the property of antanof
HOSTNAME:
IPADDRESS:
CPU:
MEMORY:'
  owner 'root'
  group 'root'
  action :create
end
