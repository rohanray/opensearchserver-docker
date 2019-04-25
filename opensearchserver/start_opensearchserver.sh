#!/bin/bash

MEMORY=${MEMORY:-5000m}
# always stops service
service opensearchserver stop
sed -e 's/#JAVA_OPTS="-Xms4G -Xmx8G"/JAVA_OPTS="-Xms'$MEMORY' -Xmx'$MEMORY'"/' -i /etc/opensearchserver
service opensearchserver start
