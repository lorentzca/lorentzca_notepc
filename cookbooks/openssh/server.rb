package 'openssh-server'

service 'sshd' do
  action [:start, :enable]
  subscribes :reload, 'remote_file[/etc/ssh/sshd_config]'
end

remote_file '/etc/ssh/sshd_config'
