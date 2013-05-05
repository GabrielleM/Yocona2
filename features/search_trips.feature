Feature: Search Trips by more than one specific attribute. 
As a trip leader 
So that I can search for a specific trip which I know exists.
I want to type more than one specific attribute into a form and view all trips with those attributes.

Background: Trips and rivers are in the database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  Given the following trips exist:
  | leader | agency | agency_contact | start_date(1i) | start_date(2i) | start_date(3i) | duration | flow | num_participants | num_guides | report_link | summary | pictures | river_id |
  | abc | a| trip | 2013 | 4 | 8 | 1 | a | a | a | a | a | a | 1 |

  Scenario: search
	When I go to the Yocona home page
	And I follow "Search Trips"
    And I fill in "River Name" with "Big River"
    And I press "Find Trip"
    Then I should see "Big River"