echo  "Script to View Build job Logs"
echo
#read -p for prompt shell and -s silent used in case of passwords

read -p "Enter Project Name : " build
echo
read -p "Enter job Number : " job
echo

test -f /var/lib/jenkins/jobs/$build/builds/$job/log

if [ $? -eq 0 ]; then
echo "Log for the  Project: $build and job: $job is : "
echo
cat /var/lib/jenkins/jobs/$build/builds/$job/log
else
  echo "The details entered were incorrect" 
   exit 
fi
