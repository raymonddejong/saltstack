#SaltStack Configuration Example for Configuring Cumulus Routers in Spine-Leaf Configuration. 

#Prerequisites
Connectivity to Cumulus Routers. 


```
sudo -s
chmod +w /etc/sudoers.d/cumulus
echo "cumulus ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/cumulus
cat /etc/sudoers.d/cumulus
chmod 0440 /etc/sudoers.d/cumulus
```
Update apt repositories
````
sudo vi /etc/apt/sources.list
```
Uncomment all debian supported
```
sudo apt-get update
sudo apt-get install -y salt-minion
```
Configure Salt Minion
```
vi /etc/salt/minion
```
Uncomment and set: 
```
master: 10.29.12.198
id:cumulus-l-01
```

Note that if in case you don't want to install salt-minion you can manage Cumulus through salt-ssh. 
This requires the following configuration on each Cumulus:
If you issue commands that need sudo, or specify ‘sudo’ in the saltstack roster, you must be sure that the connecting user has paswordless sudo access.  If this is not set in the sudoers file, the salt-ssh will be interactively prompted which breaks the automation.
sudo works only if ```NOPASSWD``` is set for user in ```‘/etc/sudoers’``` or ```‘/etc/sudoers.d’```. For example, the line below would give the ‘cumulus’ user passwordless sudo.
```cumulus ALL=(ALL) NOPASSWD: ALL```
