set -x
set -e

apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get --yes install software-properties-common
add-apt-repository -y cloud-archive:ocata
apt-get update && apt-get -y dist-upgrade
apt-get install -y python-openstackclient  python-pip git
apt-get install -y ssh-client

apt-get -y install neutron-server neutron-plugin-ml2 neutron-linuxbridge-agent neutron-dhcp-agent neutron-metadata-agent python-neutronclient conntrack
apt-get -y install nova-api nova-conductor nova-consoleauth nova-novncproxy nova-scheduler nova-placement-api python-novaclient
apt-get -y install cinder-api cinder-common
apt-get -y install keystone
apt-get -y install glance
