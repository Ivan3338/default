#!/bin/bash

sudo mkdir /tmp/tcpdump;
sudo chmod 666 /tmp/tcpdump;
sudo tcpdump -G 60 -w /tmp/tcpdump/dump;


