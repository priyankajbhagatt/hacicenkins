#!/usr/local/bin/bash -eo pipefail

#set -e
pattern="^arn:aws:secretsmanager:\S+:\d+:secret:\S+$"

yq r config.yml us-east-2.stage.secrets_from | 
while read -r ENV
read -r VALUE
do 
  SECRETARN=$(echo $VALUE | sed 's/valueFrom: //g')
  if ! echo $SECRETARN  | grep -E $pattern 
  then
	echo "Not valid arn $SECRETARN"
	exit -1
  fi
done 

#echo $key  | grep -E  "^arn:aws:secretsmanager:\S+:\d+:secret:\S+$"
#[[ $key  =~ $pattern ]] &&	echo "match"