#!/bin/sh

test -d tmp && rm -r tmp/*
test -d tmp || mkdir tmp

cd tmp

wget ftp://ftp.avm.de/cardware/fritzcrd.pci/linux_64bit/suse.10.0/fcpci-suse10.0-64bit-3.11-07.tar.gz

tar -xzf fcpci-suse10.0-64bit-3.11-07.tar.gz

cd fritz

patch -p0 < ../../fcpci.patch

./install

cd ../../
