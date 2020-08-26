nums=($(cat q4_in.txt | sort -g))
total=0
count=0
for word in ${nums[@]}; do
total=$(expr $total + $word)
count=$(expr $count + 1)
done
variable=$(echo "scale=20;$total/$count" | bc )
echo $variable

if [ $(($count%2)) -eq 0 ]
then
  v1=$(($count/2))
  v1=$(($v1-1))
  v2=$(($v1 + 1))
  var=$((${nums[$v1]} +${nums[$v2]}))
  var=$(echo "scale=20;$var/2" | bc )
  echo $var
else
    v1=$(($count + 1))
    v2=$(($v1 / 2))
    v2=$(($v2 - 1))
    variable=$(echo "scale=20;${nums[$v2]}" | bc )
    echo $variable
fi
