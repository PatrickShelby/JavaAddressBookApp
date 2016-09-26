java_tarball = "jdk-7u79-linux-x64.tar.gz"

directory "/usr/local/java"

remote_file "/usr/local/java/#{java_tarball}" do
  path "/usr/local/java/#{java_tarball}"
  source "file:///vagrant/#{java_tarball}"
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
