#!/bin/zsh

ss=$(ps -ef | grep ss-local | awk 'NR==1 {print $0}')
if [[ $ss =~ "grep" ]]
then
	echo "no ss-local process"
else
	ss_port=$(echo $ss | awk 'NR==1 {print $2}')
	echo "kill ss-local process"
	echo "port $ss_port"
	kill -9 $ss_port
fi

config_no=$1

if [[ $config_no -eq "3" ]] || [[ $config_no -eq "4" ]]
then
	nohup ss-local -c $SS_CONFIG_HOME/config$config_no --plugin obfs-local --plugin-opts "obfs=tls;obfs-host=https://www.zhibo8.cc" -v > $SS_CONFIG_HOME/log &
else
	nohup ss-local -c $SS_CONFIG_HOME/config$config_no -v > $SS_CONFIG_HOME/log &
fi
