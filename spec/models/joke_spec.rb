require 'spec_helper'

describe Joke do

  describe "validations" do
    it { should validate_presence_of(:content) }
  end

  it "has a valid factory" do
    FactoryGirl.build(:joke).valid?.should be_true
  end
end
