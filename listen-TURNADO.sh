#!/bin/bash
# AWS timy-devops STORM
# AWS timy-devops TURNADO i-0ef49e91b86205c99
# AWS edudate-dev TURNAOD i-09a6a8c6c3e45f8fa


echo "TURNADO i-09a6a8c6c3e45f8fa SSH listening on [ localhost:8822 ]"
aws ssm start-session --target i-09a6a8c6c3e45f8fa \
    --document-name AWS-StartPortForwardingSession \
    --parameters '{"portNumber":["22"],"localPortNumber":["8822"]}' &

aws ssm start-session --target i-09a6a8c6c3e45f8fa \
	--document-name AWS-StartPortForwardingSession \
	--parameters '{"portNumber":["3306"],"localPortNumber":["8806"]}' &
