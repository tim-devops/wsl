#!/bin/bash
	aws ssm start-session --target i-0a9b7a695d01b2799 \
	                       --document-name AWS-StartPortForwardingSession \
                       --parameters '{"portNumber":["22"],"localPortNumber":["8822"]}'