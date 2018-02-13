package 'tree' do
  action :install
end

package 'emacs'
package 'ntp'
package 'vim-enhanced'
package 'nano'
package 'git' do
  action :install
end

service 'ntpd' do
  action [ :start, :enable ]
end

file '/etc/motd' do
  content 'This server is the property of antanof'
  owner 'root'
  group 'root'
  action :create
end
