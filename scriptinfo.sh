#!/bin/bash

	uptime | awk '{print $(NF-2) " " $(NF-1) " " $NF}' > ./LA.txt; # 3 chisla LA
	df | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th></tr>"}' > DF.txt;
	iostat | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th><th>" $7 "</th></tr>"}' > IOSTAT.txt;
	mpstat | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th><th>" $7 "</th><th>" $8 "</th><th>" $9 "</th><th>" $10 "</th></tr>"}' > MPSTAT.txt;

	df -i | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th></tr>"}' > DFI.txt;

	netstat -lt | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th></tr>"}' > listcpsockets.txt;
	
	netstat -lu | awk '{print "<tr><th>" $1 "</th><th>" $2 "</th><th>" $3 "</th><th>" $4 "</th><th>" $5 "</th><th>" $6 "</th></tr>"}' > lisudpsockets.txt;
	
	sudo netstat -anp |grep 'tcp' | awk '{print $5}' | cut -d: -f1 | sort | uniq -c > tcpconnections.txt;

	ethtool -S enp0s3 > enp0s3.txt;
	
