require 'spec_helper'

describe MeetingsController do

  def mock_meeting(stubs={})
    @mock_meeting ||= mock_model(Meeting, stubs)
  end

  describe "GET index" do
    it "assigns all meetings as @meetings" do
      Meeting.stub(:find).with(:all).and_return([mock_meeting])
      get :index
      assigns[:meetings].should == [mock_meeting]
    end
  end

  describe "GET show" do
    it "assigns the requested meeting as @meeting" do
      Meeting.stub(:find).with("37").and_return(mock_meeting)
      get :show, :id => "37"
      assigns[:meeting].should equal(mock_meeting)
    end
  end

  describe "GET new" do
    it "assigns a new meeting as @meeting" do
      Meeting.stub(:new).and_return(mock_meeting)
      get :new
      assigns[:meeting].should equal(mock_meeting)
    end
  end

  describe "GET edit" do
    it "assigns the requested meeting as @meeting" do
      Meeting.stub(:find).with("37").and_return(mock_meeting)
      get :edit, :id => "37"
      assigns[:meeting].should equal(mock_meeting)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created meeting as @meeting" do
        Meeting.stub(:new).with({'these' => 'params'}).and_return(mock_meeting(:save => true))
        post :create, :meeting => {:these => 'params'}
        assigns[:meeting].should equal(mock_meeting)
      end

      it "redirects to the created meeting" do
        Meeting.stub(:new).and_return(mock_meeting(:save => true))
        post :create, :meeting => {}
        response.should redirect_to(meeting_url(mock_meeting))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved meeting as @meeting" do
        Meeting.stub(:new).with({'these' => 'params'}).and_return(mock_meeting(:save => false))
        post :create, :meeting => {:these => 'params'}
        assigns[:meeting].should equal(mock_meeting)
      end

      it "re-renders the 'new' template" do
        Meeting.stub(:new).and_return(mock_meeting(:save => false))
        post :create, :meeting => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested meeting" do
        Meeting.should_receive(:find).with("37").and_return(mock_meeting)
        mock_meeting.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :meeting => {:these => 'params'}
      end

      it "assigns the requested meeting as @meeting" do
        Meeting.stub(:find).and_return(mock_meeting(:update_attributes => true))
        put :update, :id => "1"
        assigns[:meeting].should equal(mock_meeting)
      end

      it "redirects to the meeting" do
        Meeting.stub(:find).and_return(mock_meeting(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(meeting_url(mock_meeting))
      end
    end

    describe "with invalid params" do
      it "updates the requested meeting" do
        Meeting.should_receive(:find).with("37").and_return(mock_meeting)
        mock_meeting.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :meeting => {:these => 'params'}
      end

      it "assigns the meeting as @meeting" do
        Meeting.stub(:find).and_return(mock_meeting(:update_attributes => false))
        put :update, :id => "1"
        assigns[:meeting].should equal(mock_meeting)
      end

      it "re-renders the 'edit' template" do
        Meeting.stub(:find).and_return(mock_meeting(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested meeting" do
      Meeting.should_receive(:find).with("37").and_return(mock_meeting)
      mock_meeting.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the meetings list" do
      Meeting.stub(:find).and_return(mock_meeting(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(meetings_url)
    end
  end

end
