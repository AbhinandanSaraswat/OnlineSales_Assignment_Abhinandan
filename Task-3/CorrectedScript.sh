#!/bin/bash
N=$1
if [ $N -lt 10 ]
then
    OUT=$((N*N))
elif [ $N -lt 20 ]
then
    OUT=1
    LIM=$((N - 10))
#Without debugging the condition for below for loop was i<$LIM which means it would not be including LIM
#Therefore the result cannot be accurate. 
    for (( i=1; i<=$LIM; i++ ))
    do
        OUT=$((OUT * i))
    done
else
    LIM=$((N - 20))
    OUT=$((LIM * LIM))
    OUT=$((OUT - LIM))
    OUT=$((OUT / 2))
fi
echo $OUT
#To run the following script we have to give executable permission by using chmod command.