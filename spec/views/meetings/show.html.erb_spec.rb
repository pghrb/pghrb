require 'spec_helper'

describe "/meetings/show.html.erb" do
  include MeetingsHelper
  before(:each) do
    assigns[:meeting] = @meeting = stub_model(Meeting,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
  end
end
