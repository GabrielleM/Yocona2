Feature: Show a trip
  As a potential river-rafting participant
  So that I can create, read, update, and destroy trips
  I want to do CRUD actions to the trip database

Background: trips and rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  Given the following trips exist:
  | leader | agency | agency_contact | start_date(1i) | start_date(2i) | start_date(3i) | duration | flow | num_participants | num_guides | report_link | summary | pictures | river_id |
  | abc | a| trip | 2013 | 4 | 8 | 1 | a | a | a | a | a | a | 1 |

  Scenario: show a trip to visitor
    Given I am on the page to list trips
    And the database preconditions have been met
    Then I should see "Listing All Trips"
    And I should see "abc"