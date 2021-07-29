#!/bin/bash

echo > inputFile 
chmod 777 inputFile
for i in {1..10}
do
echo $i", "$RANDOM >> inputFile
done

