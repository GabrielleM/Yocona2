Feature: display rivers
 
  As a potential river-rafting participant
  So that I can quickly browse rivers appropriate for my fellow river-rafting compatriots
  I want to all rivers

Background: rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  




  #|name     |length |difficulty   |ideal_flow | hazards |highlights | nearest_town| description|link |environmental_ed |on_river_special_concerns| emergency_plan | shuttle_directions |  camping_locations | local_contacts | nearest_store | map
  #|Big River|Medium |Intermediate |Medium | Raining chipmunks | Raining chipmunks |Nowhereville | It's a big river |www.link.com |Environmental Ed Notes of some sort| None |Run for your life |  Follow the yellow brick road |Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map
  #And I am on the Yocona home page

Scenario: allow user to see landing page
  When I visit the Yocona home page
  Then I should see the default index


#| id | created_at | updated_at | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |

#|1 | 2013-04-18 17:29:49 UTC | 2013-04-18 17:29:49 UTC | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |