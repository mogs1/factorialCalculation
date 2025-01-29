
number=$1
if [ -z "$number" ]; then
  echo "Please input a number."
  exit 1

elif ! [[ "$number" =~ ^[0-9]+$ ]]; then
  echo "Please input a valid number."
  exit 1
fi

factorial=1

for ((i = 1; i <= $number; i++))
do
  factorial=$((factorial * i))
done

echo "The factorial of $number is: $factorial"
