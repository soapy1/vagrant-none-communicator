# vagrant-none-communicator

This is a Vagrant communicator plugin that does not communicate with the guest. Instead, it replaces all the communicator functions with no op's. This might be useful if you have a non standard type guest that does not support common communicator formats such as ssh or winrm. Please be warned, this is NOT a recommended way to use Vagrant.

## Some of the things that might go wrong
