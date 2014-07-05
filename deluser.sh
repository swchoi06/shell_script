echo -n "이 스크립트를 실행시 userlist에 있는 user들의 아이디와 홈디렉토리가 모두 삭제됩니다. 계속하시겠습니까?[yes/no]:"

read ans

if [ $ans = "yes" ]
then

#   if [ !$1 ] 
#   then
#      echo "userlist 파일을 찾을 수 없습니다."
#      echo "README를 참고하세요"
#      exit
#   fi

   userlist=$1
   while read line
   do 
	deluser -remove-home $line
   done < $userlist
else
   exit
fi
