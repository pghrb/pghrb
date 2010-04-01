require 'spec_helper'

describe Meeting do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Meeting.create!(@valid_attributes)
  end
end
