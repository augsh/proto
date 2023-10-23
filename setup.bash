#!/bin/bash

BASEPATH=$(cd `dirname $0`; pwd)

export PATH=$BASEPATH/bin:$PATH
export LD_LIBRARY_PATH=$BASEPATH/lib:$LD_LIBRARY_PATH

echo "Setup Protobuf Env"
