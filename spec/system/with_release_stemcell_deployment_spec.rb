require 'system/spec_helper'




  describe 'ssh' do
    it 'can bosh ssh into a vm' do
      expect(bosh_ssh('batlight', 0, "uname -a", deployment: deployment.name).output).to match /Linux/
    end
  end

