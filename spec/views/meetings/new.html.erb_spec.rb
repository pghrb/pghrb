require 'spec_helper'

describe "/meetings/new.html.erb" do
  include MeetingsHelper

  before(:each) do
    assigns[:meeting] = stub_model(Meeting,
      :new_record? => true,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders new meeting form" do
    render

    response.should have_tag("form[action=?][method=post]", meetings_path) do
      with_tag("input#meeting_name[name=?]", "meeting[name]")
      with_tag("input#meeting_description[name=?]", "meeting[description]")
    end
  end
end
