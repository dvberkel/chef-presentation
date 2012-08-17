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
