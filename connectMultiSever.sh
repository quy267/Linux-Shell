#!/bin/bash

echo "Enter environment name (production/stage/liftup): "
read -r environment
#echo "$environment"

if [[ "$environment" == "stage" ]]; then
  ssh -i /home/ist004/Desktop/SALF/new-salf.pem ubuntu@54.245.216.107
elif [[ "$environment" == "production" ]]; then
  ssh -i /home/ist004/Desktop/SALF/new-salf.pem ubuntu@54.214.111.39
elif [[ "$environment" == "liftup" ]]; then
  ssh -i /home/ist004/Desktop/SALF/liftup_server.pem ubuntu@52.221.0.242
fi
