#!/bin/bash
echo "TURNADO i-0ef49e91b86205c99 SSH listening on [ localhost:8822 ]"
	aws ssm start-session --target i-0ef49e91b86205c99 \
	                       --document-name AWS-StartPortForwardingSession \
                       --parameters '{"portNumber":["22"],"localPortNumber":["8822"]}'