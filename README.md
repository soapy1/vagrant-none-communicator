# vagrant-none-communicator

This is a Vagrant communicator plugin that does not communicate with the guest. Instead, it replaces all the communicator functions with no op's. This might be useful if you have a non standard type guest that does not support common communicator formats such as ssh or winrm. Please be warned, this is NOT a recommended way to use Vagrant.

## Some of the things that might go wrong

Since this plugin allows Vagrant connections to the guest to pass thru and not actually communicate with the guest there might be some unexpected/broken behaviour. Any actions that require running commands on the guest will NOT work while using this plugin. Some common features that fall into this bucket include:

* Synced folders will not be mounted in the guest
* Won't be able to change a guest's hostname
* Any provisioner that runs on the guest won't work as expected, including (but not limited to) `shell`, `ansible`, `docker`
* ...

## Installation

```
$ vagrant plugin install vagrant-none-communicator
```

## Example usage

```
Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  # Use the none communicator. Vagrant will not be able to 
  # communicate with the guest
  config.vm.communicator = "none"
end
```
