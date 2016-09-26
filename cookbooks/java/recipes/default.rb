java_tarball = "jdk-7u79-linux-x64.tar.gz"

directory "/usr/local/java"

# remote_file "/usr/local/java/#{java_tarball}" do
#   path "/usr/local/java/#{java_tarball}"
#   source "http://download.oracle.com/otn/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz"
# end

execute 'get_jdk' do
  command "wget --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz -P /usr/local/java/"
end

execute 'extract_jdk' do
  user 'root'
  command  "tar xvzf /usr/local/java/#{java_tarball}"
  cwd '/usr/local/java'
end

cookbook_file '/tmp/java_env_config.sh' do
  source 'java_env_config.sh'
  mode 0755
end
