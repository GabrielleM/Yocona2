Feature: Destroy a river
  As a potential river-rafting participant
  So that I can destroy a river
  I want to destroy a river

Background: rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  
  Scenario: allow user to destroy a river
    Given I am on the landing page
    And I follow "Create River"
    And I fill in "River Name" with "testriver100000000"
    And I delete the river entry
    Then I should see "Listing rivers"
    And I should not see "testriver100000000"
  