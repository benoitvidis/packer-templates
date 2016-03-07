#!/usr/bin/env bash

for var in $(env | grep -E '^(PACKER|TRAVIS)' | awk -F= '{ print $1 }') ; do
    unset "$var"
done

export DEBUG=1
export ATLAS_BUILD_ID="fake"
export TRAVIS_COOKBOOKS_URL="https://github.com/benoitvidis/travis-cookbooks.git"
export TRAVIS_COOKBOOKS_BRANCH='dev'
export EDITOR='vim'







# -----------------------------------------------------------------------------
#export ATLAS_TOKEN='00-AAAAAAAAAAAAAAAAAAAAAAAAAAAA-BBBBBBBBBBBBBBBBBBBBBBBBB-CCCCCCCCC'
#export AWS_ACCESS_KEY_ID='AKDDDDDDDDDDDDDDDDDD'
#export AWS_REGION='us-east-1'
#export AWS_SECRET_ACCESS_KEY='ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ'
#export DOCKER_WORKERS_VPC_EXTERNAL_ZONE_ID='ZAAAAAAAAAAAAA'
#export DOCKER_WORKERS_VPC_INTERNAL_ZONE_ID='ZBBBBBBBBBBBBB'
#export JOB_BOARD_IMAGES_URL='https://auth:token@job-board-server.example.com/images'
#export OPSMATIC_INTEGRATION_TOKEN='aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee'
#export PACKER_LOG='nonempty'
#export SSH_KEY_PATH='/path/to/id_rsa'
#export SSH_USERNAME='whoami'
#export TRAVIS_COOKBOOKS_SHA='fffffff'
#export TRAVIS_COOKBOOKS_DIR='/path/to/travis-cookbooks'
#export TRAVIS_SUBNET_ID='subnet-aaaaaaaa'
#export TRAVIS_VPC_ID='vpc-bbbbbbbb'
#export TRAVIS_WORKER_BINARY_DIR='/tmp'
#export VSPHERE_CLUSTER='cluster-name'
#export VSPHERE_DATACENTER='datacenter-name'
#export VSPHERE_DATASTORE='datastore-name'
#export VSPHERE_HOST='10.11.222.33'
#export VSPHERE_PASSWORD='secret'
#export VSPHERE_USERNAME='username'
#export VSPHERE_VM_FOLDER='folder-name'
#export VSPHERE_VM_NETWORK='network-name'
