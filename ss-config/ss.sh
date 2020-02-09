#!/bin/zsh

ps -ef | grep ss-local | awk 'NR==1 {print $2}' | xargs kill
nohup ss-local -c $SS_CONFIG_HOME/config$1 -v > $SS_CONFIG_HOME/log &
