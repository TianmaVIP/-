vim auto-start.sh

#!/bin/bash

                 
/.../src/auto-start-server /.../auto-start.conf

cd /lib/systemd/system


vim auto-start.service

	[Unit]
	    
	Description=Start auto-start mysql jira conflush server
	    
	After=rc-local.service

	    
	[Service]
	    
	Type=forking
	ExecStart=/etc/software/atlassian-jira-enterprise-4.0-standalone/bin/jira.sh
	
	    
	SysVStartPriority=99

	    
	[Install]
	    
	WantedBy=multi-user.target
	

	
	
	
systemctl enable auto-start.service