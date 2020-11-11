read -r n
for _ in $(seq 1 "$n"); do
  read -r num
  sum=$((sum + num))
done
printf "%.3f" "$(echo "$sum/$n" | bc -l)"
