#!/usr/bin/env bash

apt-get update

# Config java env variables
USER_HOME=/home/vagrant/.bashrc
JAVA_HOME=/usr/local/java/jdk1.7.0_79
export JAVA_HOME

echo "JAVA_HOME=/usr/local/java/jdk1.7.0_79" >> $USER_HOME

echo "JRE_HOME=$JAVA_HOME/jre" >> $USER_HOME
echo "PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin" >> $USER_HOME
echo "export JAVA_HOME" >> $USER_HOME
echo "export JRE_HOME" >> $USER_HOME
echo "export PATH" >> $USER_HOME


/tmp/java_env_config.sh