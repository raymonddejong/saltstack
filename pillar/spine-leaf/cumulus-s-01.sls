cumulus-s-01:
  hostname: 
    fqdn: "cumulus-s-01.ray.salab.local"
  eth0:
    address: "172.16.254.1/24"
    description: Management
  swp1:
    address: "172.16.0.1/24"
    gateway: "172.16.0.254"
    mtu: 9000
    description: Spine-Spine
  swp2:
    address: "172.16.1.1/24"
    mtu: 9000
    description: Spine-Leaf
  swp3:
    mtu: 9000
    description: Trunk
  bridge:
    ports:
      - swp3
    vlans:
      - 307
  vlan307:
    address: 10.29.12.222/27
    vlan: 307
# BGP Configuration on Cumulus. 
  bgp: 
    as: 65000
# BGP Neighbors
  core: 
    address: 172.16.0.254
    remote_as: 64498
  leaf_a:
    address: 172.16.1.2
    remote_as: 65001
  leaf_b:
    address: 172.16.1.3
    remote_as: 65002