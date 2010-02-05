require 'spec_helper'

describe PagesController do

  it "should render the about page template" do
    get :show, :name => 'about'
    response.should render_template('pages/show/about')
  end

end
