begin
  require "vagrant"
rescue LoadError
  raise "Vagrant is required!"
end

require "vagrant-none-communicator/communicator"

module VagrantNoneCommunicator
  class Plugin < Vagrant.plugin("2")
    name "None communicator"
    description <<-DESC
    This plugins is bad it communicating! It does not communicate
    with the guest, even when it says it does
    DESC

    communicator("none") do
      Communicator
    end
  end
end
