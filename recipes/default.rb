git node[:nvm][:dir] do
  repository node[:nvm][:repository]
  reference node[:nvm][:version]
  group node[:nvm][:group]
  action :sync
end

node[:nvm][:nodejs_versions].each do |version|
  bash "Installing Node.JS #{version}" do
    code ". #{node[:nvm][:dir]}/nvm.sh && nvm install #{version}"
  end
end

execute "chmod -R g+w #{node[:nvm][:dir]}"
execute "chgrp -R #{node[:nvm][:group]} #{node[:nvm][:dir]}"
