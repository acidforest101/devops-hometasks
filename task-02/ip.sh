#!/bin/bash

cont8080_ip=$(sudo lxc-info -i -n cont8080 | cut -d : -f 2)
cont8081_ip=$(sudo lxc-info -i -n cont8081 | cut -d : -f 2)
sudo iptables -F
sudo iptables -t nat -I PREROUTING -i eth0 -p tcp --dport 8080 -j DNAT --to-destination ${cont8080_ip}:8080
sudo iptables -t nat -I PREROUTING -i eth0 -p tcp --dport 8081 -j DNAT --to-destination ${cont8081_ip}:8081