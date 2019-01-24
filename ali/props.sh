# path to the stemcell you want to use for testing
export BAT_STEMCELL=$PWD/bosh-stemcell-170.21-alicloud-kvm-ubuntu-xenial-go_agent.tgz

# path to the bat yaml file which is used to generate the deployment manifest (see below `bat.yml`)
export BAT_DEPLOYMENT_SPEC=$PWD/ali/ali.yml

# BOSH CLI executable path
export BAT_BOSH_CLI=bosh

# DNS host or IP where BOSH-controlled PowerDNS server is running, which is required for the DNS tests. For example, if BAT is being run against a MicroBOSH then this value will be the same as BAT_DIRECTOR
export BAT_DNS_HOST=192.168.0.198
# the name of infrastructure that is used by bosh deployment. Examples: aws, vsphere, openstack, warden, oci.
export BAT_INFRASTRUCTURE=alicloud

# the type of networking being used: `dynamic` or `manual`.
export BAT_NETWORKING= manual

# the path to ssh key, used by OS specs to ssh into BOSH VMs
export BAT_PRIVATE_KEY=$PWD/jumpbox.key

# Run tests with --fail-fast and skip cleanup in case of failure (optional)
export BAT_DEBUG_MODE=false
export BOSH_ENVIRONMENT=192.168.0.198
export BOSH_CLIENT=jumpbox
export BOSH_CLIENT_SECRET=$PWD/einav-ali.pem
export BOSH_CA_CERT=$PWD/jumpbox.key
