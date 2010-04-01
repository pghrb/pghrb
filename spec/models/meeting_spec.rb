require 'spec_helper'

describe Meeting do
  
  before :each do
    @meeting = Meeting.new
  end
  
  it "should have a name" do
    @meeting.name = "My Meeting"
    
    @meeting.name.should == "My Meeting"
  end
  
  it "should have a date" do
    date = 1.day.ago
    @meeting.date = date
    
    @meeting.date.should == date
  end
  
  it "should have a description" do
    @meeting.description = "A description"
    
    @meeting.description.should == "A description"
  end

end