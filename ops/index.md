---
layout: page
title: here, hold this.
---

```
$ cap production extinguish
$ fab -H production extinguish
$ ansible production -m command extinguish
$ for host in $(cat ~/production) ; do \
  ssh ${host} "sudo production" ; done
```

<img src="./ops.png" alt="🔥" />
