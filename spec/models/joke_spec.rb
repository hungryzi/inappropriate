require 'spec_helper'

describe Joke do
  it "has a valid factory" do
    FactoryGirl.build(:joke).valid?.should be_true
  end
end
