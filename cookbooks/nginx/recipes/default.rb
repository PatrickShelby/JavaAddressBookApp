apt_package 'nginx' do
  action :install
end

cookbook_file "/etc/nginx/sites-available/default" do
  source "nginx_conf"
  mode 0644
end

service 'nginx' do
  action :restart
end