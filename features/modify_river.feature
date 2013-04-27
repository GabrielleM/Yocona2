Feature: Modify a river
  As a potential river-rafting participant
  So that I can modify an existing river
  I want to modify a river

Background: rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  
  Scenario: allow user to modify a river
    Given I am on the landing page
    And I follow "Create River"
    And I fill in "River Name" with "zyx"
    And I press "Create"
    When I follow "Edit"
    And I fill in "River Name" with "zyx"
    And I press "Update River Information"
    Then I should see "River was successfully updated."
  