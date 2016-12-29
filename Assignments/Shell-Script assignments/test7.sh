#!/bin/bash
sudo tiger
subject="Security auditing report"
To_address="alex.john@razorthink.net"
cd /var/log/tiger/
fn=$(ls -rt1 | tail -1)
cat /var/log/tiger/ | sudo mail -s "your subject" alex.john@razorthink.net
#mail -s "$subject""$To_address"<$fn>1

