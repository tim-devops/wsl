#!/bin/bash
./listen-TURNADO.sh >>logs/turnado.log 2>>logs/turnado.err </dev/null &
echo "All ears.."
ps -aux | grep "aws ssm"
