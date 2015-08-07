#!/bin/bash

MODULE_PATH=./modules-3rd-party

if [ ! $(which puppet) ]; then
  echo "puppet not installed, install from https://docs.puppetlabs.com/guides/install_puppet/install_osx.html"
	exit 1
fi

if [ ! $(which librarian-puppet) ]; then
  echo "librarian-puppet gem not installed, install via rubygems."
  exit 2
fi

librarian-puppet config path ${MODULE_PATH} --local
librarian-puppet install

puppet apply --modulepath ${MODULE_PATH}:./modules manifests/site.pp
