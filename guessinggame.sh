function count_files {
my_cmd="ls | wc -l"
echo `eval $my_cmd`
}

a=3
c=$(count_files)
while [ 1 != $c ]
do
echo "Guess the number of files in the current directory " 
read b
if [ $c == $b ]
then
   echo "Congrats!"
c=1
elif [ $c -gt $b ]
then
   echo "Your guess is less than the actual number"
elif [ $c -lt $b ]
then
   echo "Your guess is greater than the actual number"
fi
done