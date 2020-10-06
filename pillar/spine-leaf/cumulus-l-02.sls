cumulus-l-02:
  hostname:
    fqdn: "cumulus-l-02.ray.salab.local"
  eth0:
    address: "172.16.254.3/24"
    gateway: "172.16.254.1"
    description: Management
  swp1:
    address: "172.16.1.3/24"
    gateway: "172.16.1.1"
    mtu: 9000
    description: Spine-Leaf
  swp2:
    mtu: 9000
    description: Trunk
  bridge:
    ports:
      - swp2
    vlans:
      - 102
      - 104
      - 106
  vlan102:
    address: 192.168.102.1/24
    vlan: 102
  vlan104:
    address: 192.168.104.1/24
    vlan: 104
  vlan106:
    address: 192.168.106.1/24
    vlan: 106
# BGP Configuration on Cumulus
  bgp: 
    as: 65002 
# BGP Neighbors
  spine:
    address: 172.16.1.1
    remote_as: 65000
  router_a:
    address: 192.168.102.254
    remote_as: 65005
  router_b: 
    address: 192.168.104.254
    remote_as: 65005
  router_c:
    address: 192.168.106.254
    remote_as: 65005
