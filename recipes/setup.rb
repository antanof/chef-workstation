package 'tree' do
  action :install
end

package 'emacs' do
  action :install
end

package 'ntp' do
  action :install
end

package 'vim-enhanced' do
  action :install
end

package 'nano' do
  action :install
end

package 'git' do
  action :install
end

service 'ntpd' do
  action [:start, :enable]
end

# node['ipaddress']
# node['memory']['total']

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'antanof'
  )
  owner 'root'
  group 'root'
  action :create
end
