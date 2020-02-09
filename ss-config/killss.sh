#!/bin/zsh

ps -ef | grep ss-local | awk 'NR==1 {print $2}' | xargs kill
