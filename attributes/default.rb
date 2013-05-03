default[:nvm][:user] = "vagrant"
default[:nvm][:group] = "vagrant"
default[:nvm][:dir] = "/home/#{default[:nvm][:user]}/.nvm"
default[:nvm][:version] = "master"
default[:nvm][:repository] = "https://github.com/creationix/nvm.git"
default[:nvm][:nodejs_versions] = ["0.10.5"]
