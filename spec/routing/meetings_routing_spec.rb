require 'spec_helper'

describe MeetingsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/meetings" }.should route_to(:controller => "meetings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/meetings/new" }.should route_to(:controller => "meetings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/meetings/1" }.should route_to(:controller => "meetings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/meetings/1/edit" }.should route_to(:controller => "meetings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/meetings" }.should route_to(:controller => "meetings", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/meetings/1" }.should route_to(:controller => "meetings", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/meetings/1" }.should route_to(:controller => "meetings", :action => "destroy", :id => "1") 
    end
  end
end
