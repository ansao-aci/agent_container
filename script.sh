#!/bin/bash

echo ${agent_name}
echo ${bldvm_ip}
tmp=$(mktemp) && jq '.opflex.name="'"${agent_name}"'"' opflex-agent-ovs.conf > "$tmp"  && mv "$tmp" /opflex/agent-ovs/opflex-agent-ovs.conf
tmp=$(mktemp) && jq '.opflex.peers[0].hostname="'"${bldvm_ip}"'"' opflex-agent-ovs.conf > "$tmp"  && mv "$tmp" /opflex/agent-ovs/opflex-agent-ovs.conf
cat  opflex-agent-ovs.conf
./opflex_agent -c opflex-agent-ovs.conf

