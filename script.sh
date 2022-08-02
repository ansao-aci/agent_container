#!/bin/bash

echo ${agent_name}
tmp=$(mktemp) && jq '.opflex.name="'"${agent_name}"'"' opflex-agent-ovs.conf > "$tmp"  && mv "$tmp" /opflex/agent-ovs/opflex-agent-ovs.conf
cat  opflex-agent-ovs.conf
./opflex_agent -c opflex-agent-ovs.conf

