package 'zsh'

execute 'set login shell' do
  command 'chsh -s /bin/zsh lorentzca'
  not_if "test $(su -c \"echo $SHELL\" lorentzca) = \"/bin/zsh\""
end
