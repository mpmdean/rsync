#!/bin/bash
for i in {0..1000}
# This script syncrontizes a renote and local folder using the rsync utility useful for getting data in general and particularly when files are still being created on the remote (or local) compuater. The -e switch is using an rsa id to authenticate and avoid typing the password. It can be removed if needed -- you will just need to type a password.

do
  rsync -av rkc88779@ssh.diamond.ac.uk:/dls/i21/data/2022/mm31324-1/ /Users/markdean/Data/LBCO_DLS/ -e "ssh -i /Users/markdean/.ssh/id_rsa" || break
  sleep 30 || break
done
