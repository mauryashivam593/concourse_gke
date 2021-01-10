#!/bin/bash
 
#set -e
 

 
#echo ${cloud_build_key} > /tmp/key.json
#gcloud auth activate-service-account ${service_account} --key-file=/tmp/key.json --project=${gcp_project}
 
#sed -i "s/APPLICATION_NAME/${application_name}/g" ${application_repo}/ci/drools-wb/showcase/Dockerfile
 
echo '########'
#echo ${image_tag}
echo '########'
#echo ${logs_dir}
 
gcloud builds submit concourse_gke/. 
 
echo 'COMPLETED gcloud builds submit'
sleep 10
echo 'creating container image tag'
sleep 5
