require 'logger'

module VagrantNoneCommunicator
  # This class provides no communication with the VM 
  class Communicator < Vagrant.plugin("2", :communicator)
    def self.match?(machine)
      # All machines are capable of not communicating
      true
    end

    def initialize(machine)
      @machine = machine
      @logger  = Log4r::Logger.new("vagrant::plugin::communication::none")
    end

    def wait_for_ready(timeout)
      @logger.debug("always ready, never connecting")
      true
    end

    def ready?
      @logger.debug("ready! not actually going to connect")
      # Always ready
      true
    end

    def execute(command, opts=nil, &block)
      @logger.debug("trying to run command #{command}")
      @logger.debug("not actually going to do it!")
      # Good exit status
      return 0
    end

    def sudo(command, opts=nil, &block)
      execute(command, opts, &block)
    end

    def download(from, to=nil)
      @logger.debug("trying to download! Not acutally going to do it")
      true
    end

    def test(command, opts=nil)
      @logger.debug("trying to test! Not acutally going to do it")
      execute(command, opts) == 0
    end

    def upload(from, to)
      @logger.debug("trying to upload! Not acutally going to do it")
      true 
    end

    def reset!
      @logger.debug("trying to reset! Not acutally going to do it")
      true
    end

    def generate_environment_export(env_key, env_value)
      template = machine_config_ssh.export_command_template
      template.sub("%ENV_KEY%", env_key).sub("%ENV_VALUE%", env_value) + "\n"
    end
  end
end
