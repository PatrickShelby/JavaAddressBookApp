#!/bin/bash
VAGRANT_HOME="/home/vagrant/.bashrc"

echo "JAVA_HOME=/usr/local/java/jdk1.7.0_79" >> $VAGRANT_HOME
echo "export JAVA_HOME" >> $VAGRANT_HOME
echo "JRE_HOME=$JAVA_HOME/jre" >> $VAGRANT_HOME
echo "export JRE_HOME" >> $VAGRANT_HOME
echo "PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin" >> $VAGRANT_HOME
echo "export PATH" >> $VAGRANT_HOME
