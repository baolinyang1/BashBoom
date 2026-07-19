for i in 1 2 3 4 5; do
echo "number $i"
done

largest=$(ls -S | head -n 1)
echo "Largest file is $largest"

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
echo "Current timestamp is $timestamp"