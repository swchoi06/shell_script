userlist=$1

while read user 
do
	echo "$user"
	useradd -m -s /bin/bash $user
done < $userlist
