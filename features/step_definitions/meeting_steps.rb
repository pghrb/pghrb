Then /^I should see the meeting's (.+)$/ do |attribute|
  response.should contain(@meeting.send(attribute))
end