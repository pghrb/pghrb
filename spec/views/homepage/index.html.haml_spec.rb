require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe 'homepage/index.html.haml' do
  
  context "when there are no meetings" do
    
    before :all do
      Meeting.destroy_all
    end
    
    it "should say there are no upcoming meetings" do
      render
      
      response.should contain("No upcoming meetings.")
    end
    
  end
  
  context "when there is a single meeting" do
  
    before :each do
      assigns[:current_meeting] = mock_model(Meeting).as_null_object
    end
  
    it "should have the meeting's name" do
      assigns[:current_meeting].stub!(:name).and_return("Meeting Name")
      render
      
      response.should contain("Meeting Name")
    end
    
    it "should have the meeting's date" do
      assigns[:current_meeting].stub!(:date).and_return(Date.today)
      render
      
      response.should contain(Date.today.to_s)
    end
    
    it "should have the meeting's description" do
      assigns[:current_meeting].stub!(:description).and_return("Meeting description")
      render
      
      response.should contain("Meeting description")
    end

  end
  
end