#!/bin/bash
bldvm_ip='172.31.139.176'
for i in {1..3}
do
   agname='pep'
   echo "Creating $i th container"
   agname=$agname$i
   echo $agname
   docker run -d -it -e bldvm_ip=$bldvm_ip -e agent_name=$agname  --name pep${i} demo
done
