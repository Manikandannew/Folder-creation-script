#!/bin/bash
echo " Journals libert job:"
read var
echo "journals name is" $var
cd /volumes/APSAMI_FTP/root/Journals/509_liebert
read war
 echo "Enter the Issue Number" $war
cd /volumes/APSAMI_FTP/root/Journals/509_liebert
if [ -d "/volumes/APSAMI_FTP/root/Journals/509_liebert/$var" ]
then
test6 $var $war
 echo "this 509_libert issue is created successfully"
elif [ -d "/volumes/APSAMI_FTP/root/Journals/199_liebert/$var" ]
then
cd /volumes/APSAMI_FTP/root/Journals/199_liebert/$var
test6 $var $war
 echo " 199_libert jobs created"
elif [ -d "/volumes/APSAMI_FTP/root/Journals/618_duke/$var" ]
then
cd /volumes/APSAMI_FTP/root/Journals/618_duke/$var
test9 $var $war
 echo " this 618_duke Jobs created"
elif [ -d "/volumes/APSAMI_FTP/root/Journals/600_wisconsin/$var" ]
then
cd  /volumes/APSAMI_FTP/root/Journals/600_wisconsin/$var
test9 $var $war
 echo " this 600_wisconsin job created"
else
 echo " Invalid Journals Name"
fi

~
