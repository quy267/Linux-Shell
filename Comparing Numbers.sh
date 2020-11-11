read -r x
read -r y

if [  "$x" -gt "$y" ]; then
  printf "X is greater than Y"
elif [ "$x" -eq "$y"  ]; then
  printf "X is equal to Y"
  else
    printf "X is less than Y"
fi

