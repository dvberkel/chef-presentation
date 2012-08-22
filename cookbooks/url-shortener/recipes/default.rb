package "redis-server"
include_recipe "nodejs"
include_recipe "nodejs::npm"

git "/home/vagrant/scratch/url-shortener" do
  repository "git://github.com/dvberkel/node-experiment.git"
  action :sync
  user "vagrant"
  group "vagrant"
end

execute "npm install" do
  command "npm install"
  cwd "/home/vagrant/scratch/url-shortener"
end

execute "npm start" do
  command "npm start &"
  cwd "/home/vagrant/scratch/url-shortener"
end
