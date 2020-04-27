
#!/bin/bash

echo  “Enter the memory value to check”

read memory_limit

if  [[ $memory_limit -lt `cat /proc/meminfo  | head -n1 | awk '{print $2;}'` ]]
     then
        echo "existing memory is more than memory limit"
     else
        echo "memory limit is exceeding the existing memory"
fi

