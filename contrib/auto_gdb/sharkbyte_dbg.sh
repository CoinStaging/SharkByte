#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.sharkbytecore/sharkbyted.pid file instead
sharkbyte_pid=$(<~/.sharkbytecore/testnet3/sharkbyted.pid)
sudo gdb -batch -ex "source debug.gdb" sharkbyted ${sharkbyte_pid}
