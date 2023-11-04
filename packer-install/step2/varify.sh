#!/bin/bash
set -e
dpkg-query -W packer | grep packer
