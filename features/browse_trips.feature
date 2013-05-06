Feature: Browse Trips casually, filtering by a choice of 3 predetermined categories.

As a naive user.
So that I can explore past trips.
I would like to filter all of the trips by a category of universal interest. 

Background: Trips and rivers are in the database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  | River2 | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  Given the following trips exist:
  | leader | agency | agency_contact | start_date(1i) | start_date(2i) | start_date(3i) | duration | flow | num_participants | num_guides | report_link | summary | pictures | river_id |
  | abc | a| trip | 2099 | 4 | 8 | 1 | a | a | a | a | a | a | 1 |

  Scenario: browse that does exist happy path
	When I go to the Yocona home page
	And I follow "Browse Trips"
    Then I should see "Big River"
    And I should see "2099"

    Scenario: browse that does NOT exist sad path
  When I go to the Yocona home page
  And I follow "Browse Trips"
  And I select "River2" from "river_name"
  And I am at the correct page
  Then I should not see "2099"
