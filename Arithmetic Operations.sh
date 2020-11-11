read -r num
echo "$num" | bc -l | xargs printf "%.3f"
