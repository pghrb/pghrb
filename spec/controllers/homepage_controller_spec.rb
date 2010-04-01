require 'spec_helper'

describe HomepageController do

  before :each do
    @meeting = mock_model(Meeting)
    Meeting.stub!(:last).and_return(@meeting)
  end

  it "should assign the meeting" do
    get :index
    assigns[:current_meeting].should == @meeting
  end

end
