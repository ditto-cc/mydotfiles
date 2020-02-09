#!/bin/zsh

ps -ef | grep ss-local | awk 'NR==1 {print $2}' | xargs kill
nohup ss-local -c ~/ss-config/config$1 -v > ~/ss-config/log &
