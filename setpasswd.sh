userlist=$1

echo "$userlist"

while read user 
do
	echo $user >> .qdw.txt
	echo $user >> .qdw.txt
	echo $user >> .qdw.txt
done < $userlist

while read user
do
	echo "$user"
	passwd $user
	read -p "$*"
	read -p "$*"
done < .qdw.txt

rm .qdw.txt
