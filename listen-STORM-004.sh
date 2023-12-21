#!/bin/bash
echo "STORM i-0a9b7a695d01b2799 RDP listening on [ localhost:8889 ]"
	aws ssm start-session --target i-0a9b7a695d01b2799 \
	                       --document-name AWS-StartPortForwardingSession \
                       --parameters '{"portNumber":["3389"],"localPortNumber":["8889"]}'