Feature: Modify a trip
  As a potential river-rafting participant
  So that I can modify trips
  I want to modify trips

Background: trips and rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  Given the following trips exist:
  | leader | agency | agency_contact | start_date(1i) | start_date(2i) | start_date(3i) | duration | flow | num_participants | num_guides | report_link | summary | pictures | river_id |
  | abc | a| trip | 2013 | 4 | 8 | 1 | a | a | a | a | a | a | 1 |

  Scenario: allow user to modify a trip
    Given I am on the landing page
    And I follow "Create Trip"
    And I fill in "Leader" with "abc"
    And I press "Create"
    When I follow "Edit"
    And I fill in "Leader" with "cba"
    And I press "Update Trip"
    Then I should see "Trip was successfully updated."