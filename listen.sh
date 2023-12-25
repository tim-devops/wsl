#!/bin/bash
./listen-STORM-004.sh &
./listen-TURNADO-004.sh &
echo "All ears.."
ps -aux | grep "aws ssm"
