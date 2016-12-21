#!/bin/bash

	sudo tcpdump tcp -r /tmp/tcpdump/dump | awk '{print $NF}' > tcpbytes.txt;
        sudo tcpdump udp -r /tmp/tcpdump/dump | awk '{print $NF}' > udpbytes.txt;
        sudo tcpdump icmp -r /tmp/tcpdump/dump | awk '{print $NF}' > icmpbytes.txt;
        sudo tcpdump -r /tmp/tcpdump/dump | awk '{print $NF}' > dump.txt;

