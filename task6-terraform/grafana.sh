#!/bin/bash
#== installing necessary packages   ==#
sudo apt-get install -y software-properties-common wget
sudo apt-get install -y apt-transport-https
#
#==	add grafana repo	==#
sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
#==	update	==#
sudo apt-get update
#
#==	install garafana package	==#
sudo apt-get -y install grafana
#
#== opening port 80 for grafana    ==#
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
#
#==	reload	 ==#
sudo systemctl daemon-reload
#
#==	start service	==#
sudo systemctl start grafana-server
#
#==	enable service   ==#
sudo systemctl enable grafana-server.service