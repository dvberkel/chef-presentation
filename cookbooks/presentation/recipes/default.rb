execute "update sources" do
  command "apt-get update"
end

# package groups
vcs = %w{git-core}
util = %w{libshadow-ruby1.8}
window_manager = %w{xserver-xorg xinit openbox obmenu lightdm-gtk-greeter}
window_applications = %w{xterm firefox}

# all packages to install
packages = [ vcs, util, window_manager, window_applications ]

packages.flatten.each do |a_package|
  package a_package
end

directory "/home/vagrant/scratch" do
  owner "vagrant"
  group "vagrant"
  mode "0755"
  action :create
end

git "/home/vagrant/scratch/chef-presentation-cookbooks" do
  repository "git://github.com/dvberkel/chef-presentation-cookbooks.git"
  action :sync
  user "vagrant"
  group "vagrant"
end

