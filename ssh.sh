#!/bin/bash
input="ssh-list.json"

# write title of menu
echo "SSH CLI Menu's' :"
echo "Credit By. Aidil Febrian (KILLYOUGUTSXXX)"
echo "Github: https://github.com/KILLYOUGUTSXXX"
echo ""

optName=""
optValue=""
seqnum=0

jq -c '.[]' $input | while read i; do
  seqnum=$((seqnum + 1))  
  echo "$seqnum ). $(jq -r .name <<< "$i")"
done

printf "\nChoose your option : "
read _options

currentSSH=$(jq -c ".[$((_options - 1))]" $input)


echo "You have to choose $(jq -r .name <<< "$currentSSH").";
printf "Starting the ssh ...";
sleep 3;
exec ssh -i $(jq -r .value <<< "$currentSSH");
