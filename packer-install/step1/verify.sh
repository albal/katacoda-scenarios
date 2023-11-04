#!/bin/bash
set -x
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint | grep "798A EC65 4E5C 1542 8C8E  42EE AA16 FCBC A621 E701"
