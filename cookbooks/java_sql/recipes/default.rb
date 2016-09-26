execute 'update_apt' do
  user "root"
  command "apt-get update"
end

# mysql_service 'mysql-master' do
#   port '3306'
#   initial_root_password 'mysql'
#   action [:create]
# end

apt_package 'libmysql-java' do
  action :install
  options '--force-yes'
end