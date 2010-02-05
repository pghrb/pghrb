Feature: About
  In order to publicize Pittsburgh Ruby
  As a rubyist
  I want tell people about Pittsburgh Ruby
  
  Scenario: Visits page
    When I go to the about page
    Then I should see "About Pittsburgh Ruby"
    And I should see "Vivísimo"
    And I should see "info@pghrb.org"
    And I should see "@pghrb"
    And I should see "7:30 PM"
  
  

  
