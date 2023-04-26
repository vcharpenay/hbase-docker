#!/bin/bash
echo "starting HBase master..."
bin/start-hbase.sh

echo "starting shell..."
bin/hbase shell
