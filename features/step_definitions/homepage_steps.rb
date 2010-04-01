Given /^there are no upcoming meetings$/ do
  Meeting.destroy_all
end