apt_package 'tomcat7' do
  action :install
end

service "tomcat7" do
  action :stop
end

execute "remove_webapps_data" do
  command  "sudo rm -rf /var/lib/tomcat7/webapps/*"
end

cookbook_file "/etc/tomcat7/server.xml" do
  source "server.xml"
  mode 0644
end