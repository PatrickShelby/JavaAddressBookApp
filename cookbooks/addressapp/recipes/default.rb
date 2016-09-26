
tmp_granny_dir = "/opt/granny_app"

directory "#{tmp_granny_dir}"

cookbook_file "#{tmp_granny_dir}/granny.war" do
  owner 'root'
  group 'root'
  mode 0755
  source "granny.war"
  action :create
end

cookbook_file "#{tmp_granny_dir}/granny.xml" do
  owner 'root'
  group 'root'
  mode 0755
  source "granny.xml"
  action :create
end

cookbook_file "#{tmp_granny_dir}/grannydb.sql" do
  owner 'root'
  group 'root'
  mode 0755
  source "grannydb.sql"
  action :create
end

cookbook_file "/var/lib/tomcat7/webapps/granny.war" do
  owner 'vagrant'
  group 'vagrant'
  mode 0755
  source "granny.war"
  action :create
end

service 'tomcat7' do
  action :start
end