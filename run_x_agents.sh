#!/bin/bash
for i in {1..10}
do
   agname='pep'
   echo "Creating $i th container"
   agname=$agname$i
   echo $agname
   docker run -d -it -e agent_name=$agname  --name pep${i} demo
done
