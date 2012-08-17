# package groups
vcs = %w{git-core}

# all packages to install
packages = [ vcs ]

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

