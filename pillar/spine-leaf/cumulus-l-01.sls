cumulus-l-01:
  hostname: 
    fqdn: "cumulus-l-01.ray.salab.local"
  eth0:
    address: "172.16.254.2/24"
    gateway: "172.16.254.1"
    description: Management
  swp1:
    address: "172.16.1.2/24"
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
      - 100
      - 101
      - 103
      - 200
  vlan100:
    address: 192.168.100.1/24
    vlan: 100
  vlan101:
    address: 192.168.101.1/24
    vlan: 101
  vlan103:
    address: 192.168.103.1/24
    vlan: 103
  vlan105:
    address: 192.168.105.1/24
    vlan: 105
  vlan200:
    address: 192.168.200.1/24
    vlan: 200
# BGP Configuration on Cumulus. 
  bgp: 
    as: 65001  
# BGP Neighbors
  spine:
    address: 172.16.1.1
    remote_as: 65000
  router_a:
    address: 192.168.101.254
    remote_as: 65005
  router_b: 
    address: 192.168.103.254
    remote_as: 65005
  router_c:
    address: 192.168.105.254
    remote_as: 65005