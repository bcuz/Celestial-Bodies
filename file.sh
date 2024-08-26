#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=universe --tuples-only -c"

# select by id, then update via that id

# for i in $(seq 1 13);
# do
#     # echo $i
#     planet_id=$($PSQL "SELECT planet_id FROM planet WHERE planet_id = $i")
#     set_val=$($PSQL "UPDATE planet SET distance_from_sun = $planet_id WHERE planet_id = $planet_id")

# done

# loop through array to insert all the moons? would be fun
# id 10
declare -a arr=("Aaran" "Aaren" "Aarez" "Aarman" "Aaron" "Aaron-James" "Aarron" "Aaryan" "Aaryn" "Aayan" "Aazaan" "Abaan" "Abbas" "Abdallah" "Abdalroof" "Abdihakim" "Abdirahman" "Abdisalam" "Abdul" "Abdul-Aziz")

## now loop through the above array
for i in "${arr[@]}"
do
  echo "$i"
  set_val=$($PSQL "insert into moon(name, planet_id) values('$i', 10)")
  break
   # or do whatever with individual element of the array
done