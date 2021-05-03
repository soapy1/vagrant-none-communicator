require File.expand_path("../../../../lib/vagrant-none-communicator", __FILE__)

describe VagrantNoneCommunicator::Communicator do
  
  let(:machine) { double("machine") }
  let(:communicator){ described_class.new(machine) }

  describe ".wait_for_ready" do
    it "always returns true" do
      expect(communicator.wait_for_ready(0)).to eq(true)
      expect(communicator.wait_for_ready(0.6)).to eq(true)
      expect(communicator.wait_for_ready(10)).to eq(true)
    end
  end

  describe ".ready?" do
    it "always returns true" do
      expect(communicator.ready?).to eq(true)
    end
  end

  describe ".execute" do
    it "always returns 0" do
      expect(communicator.execute("not a real command")).to eq(0)
    end
  end

  describe ".sudo" do
    it "always returns 0" do
      expect(communicator.sudo("not a real command")).to eq(0)
    end
  end

  describe ".download" do
    it "always returns true" do
      expect(communicator.download("not a real place")).to eq(true)
      expect(communicator.download("not a real place", "not a real too")).to eq(true)
    end
  end

  describe ".test" do
    it "always returns true" do
      expect(communicator.test("this is not a real command")).to eq(true)
    end
  end

  describe ".upload" do
    it "always returns true" do
      expect(communicator.upload("not a real place", "not a real too")).to eq(true)
    end
  end
end
