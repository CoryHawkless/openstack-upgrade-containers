set -x
set -e

apt-get --yes update
export DEBIAN_FRONTEND=noninteractive
apt-get --yes install software-properties-common
add-apt-repository -y cloud-archive:ussuri
apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade
apt-get install -y python3-openstackclient  python-pip git
apt-get install -y ssh-client

# Following packages needed for debugging
apt-get install -y net-tools vim

apt-get -y install nova-api nova-conductor nova-novncproxy nova-scheduler
apt-get -y install neutron-server neutron-plugin-ml2 neutron-linuxbridge-agent neutron-dhcp-agent neutron-metadata-agent conntrack
apt-get -y install cinder-api cinder-common
apt-get -y install placement-api
apt-get -y install keystone
apt-get -y install glance
