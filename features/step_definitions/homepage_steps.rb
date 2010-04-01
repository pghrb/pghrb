Given /^there are no upcoming meetings$/ do
  Meeting.destroy_all
end

Given /^there is an upcoming meeting$/ do
  @meeting = Meeting.create!(:name => "Some Meeting", :date => 1.day.from_now,
                             :description => "A Description")
end