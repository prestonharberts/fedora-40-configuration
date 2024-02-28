# Virtual Machine Manager

Run the following to install Virtual Machine Manager:

```
sudo dnf install virt-manager -y
```

When adding a virtual machine, allocate half of the current machine's the available RAM and CPU cores to the virtual machine.

Run the following to be able to use Virtual Machine Manager without sudo privileges:

```
sudo groupadd --system libvirt
sudo usermod -a -G libvirt $(whoami)
su - $USER
```
