apt_package 'mysql-server' do
  action :install
end

apt_package 'mysql-client' do
  action :install
end

apt_package 'libmysql-java' do
  action :install
end