#!/bin/bash

echo "If-Else Statement"

for num in {1..100}; do
if ([ `expr $num % 3` == 0 ] || [ `expr $num % 5` == 0 ]) && [ `expr $num % 15` != 0 ];
then
     echo "The condition is true. $num"
fi;
done
