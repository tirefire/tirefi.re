---
layout: page
title: shit's on fire, yo
---

# networking in 2016

![😭it😭gets😭better😭][cryops]

```
$ vim ~/src/PUPPET/cisco-gear/hiera/prod/dc-1.yaml
$ vim ~/src/CHEF/sysops_cisco/attributes/prod.rb
$ vim ~/src/devops/ansible/dc1-asa/vars/main.yaml
$ ack dc1-asa201 ~/src/netsec/python-automation
$ ack dc1-asa201 ~
$ grep asa ~/.passwords/network
$ ssh admin@dc1-asa21.dc1.tirefi.re
asa201/sec> enable
Password: *****
asa201/sec# conf term
asa201/sec(config)# access-list hailmary extended permit ip any any
asa201/sec(config)# access-group hailmary in interface outside
asa201/sec(config)# access-group hailmary out interface outside
asa201/sec(config)# wr mem
asa201/sec(config)# exit
asa201/sec# exit
$ echo "ok try it now" | mail -s "FYI: AR: outage update" devops@tirefi.re
$ halt
```

![problem solving is an overwhelmingly positive experience overall][exit]

[cryops]: ./cry-a-lot.jpg "😭it😭gets😭better😭"
[exit]: ./aaaaand-im-out.gif "problem solving is an overwhelmingly positive experience overall"
