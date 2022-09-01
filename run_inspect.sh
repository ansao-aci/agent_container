#!/bin/bash
for i in {1..5}
do
   agname='pep'
   echo "Creating $i th container"
   agname=$agname$i
   echo $agname
   docker exec -u 0 -it pep${i} sh -c "gbp_inspect --socket /home/opflex/opflex-agent-ovs-inspect.sock -pq GbpEpGroup"
done
