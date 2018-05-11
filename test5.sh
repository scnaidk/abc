#!/bin/bash
expect << EOF
spawn ssh 172.25.0.11
expect "password" {send "redhat\n"}
expect "#"        {send "touch /haha.txt\n"}
expect "#"        {send "exit\n"}
EOF
~                                 
