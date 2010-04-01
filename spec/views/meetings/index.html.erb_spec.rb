require 'spec_helper'

describe "/meetings/index.html.erb" do
  include MeetingsHelper

  before(:each) do
    assigns[:meetings] = [
      stub_model(Meeting,
        :name => "value for name",
        :description => "value for description"
      ),
      stub_model(Meeting,
        :name => "value for name",
        :description => "value for description"
      )
    ]
  end

  it "renders a list of meetings" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
