require 'spec_helper'

describe "/meetings/edit.html.erb" do
  include MeetingsHelper

  before(:each) do
    assigns[:meeting] = @meeting = stub_model(Meeting,
      :new_record? => false,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders the edit meeting form" do
    render

    response.should have_tag("form[action=#{meeting_path(@meeting)}][method=post]") do
      with_tag('input#meeting_name[name=?]', "meeting[name]")
      with_tag('input#meeting_description[name=?]', "meeting[description]")
    end
  end
end
