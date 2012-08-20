# package groups
vcs = %w{git-core}
util = %w{libshadow-ruby1.8}

# all packages to install
packages = [ vcs, util ]

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

