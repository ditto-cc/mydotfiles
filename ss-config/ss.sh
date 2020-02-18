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
nohup ss-local -c $SS_CONFIG_HOME/config$1 -v > $SS_CONFIG_HOME/log &
