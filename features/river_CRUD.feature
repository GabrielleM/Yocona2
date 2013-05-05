Feature: basic crud features for rivers
 
  As a potential river-rafting participant
  So that I can create, read, update, and destroy rivers
  I want to do CRUD actions to the river database

Background: rivers are in database
  Given the following rivers exist:
  | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |
  | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |
  




  #|name     |length |difficulty   |ideal_flow | hazards |highlights | nearest_town| description|link |environmental_ed |on_river_special_concerns| emergency_plan | shuttle_directions |  camping_locations | local_contacts | nearest_store | map
  #|Big River|Medium |Intermediate |Medium | Raining chipmunks | Raining chipmunks |Nowhereville | It's a big river |www.link.com |Environmental Ed Notes of some sort| None |Run for your life |  Follow the yellow brick road |Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map
  #And I am on the Yocona home page

  Scenario: allow user to create a river
    Given I am on the landing page
    When I follow "Create River"
    And I fill in "Name" with "somename"
    And I press "Create"
    Then I should see "River was successfully created."
  
  Scenario: allow user to update a river
    Given I am on the landing page
    And I follow "Create River"
    And I fill in "Name" with "abc"
    And I press "Create"
    When I follow "Edit"
    And I fill in "Name" with "cba"
    And I press "Update River"
    Then I should see "River was successfully updated."
  
  Scenario: allow user to destroy a river
    Given I am on the landing page
    And I follow "Create River"
    And I fill in "Name" with "coollongnamethatnoonewilltypeandwillnotbeinthedatabase"
    And I delete the river entry
    Then I should see "Listing rivers"
    And I should not see "coollongnamethatnoonewilltypeandwillnotbeinthedatabase"
  
  Scenario: allow user to read a river
    Given I am on the page to list rivers
    Then I should see "Listing rivers"
    And I should see "Big River"



#| id | created_at | updated_at | name | length | difficulty | ideal_flow | hazards | highlights | nearest_town | description | link | environmental_ed | on_river_special_concerns | emergency_plan | shuttle_directions | camping_locations | local_contacts | nearest_store | map |

#|1 | 2013-04-18 17:29:49 UTC | 2013-04-18 17:29:49 UTC | Big River | Medium | Intermediate | Medium | Raining chipmunks | Raining chipmunks | Nowhereville | It's a big river | www.link.com | Environmental Ed Notes of some sort | None | Run for your life | Follow the yellow brick road | Right here | Mr. Bigglesworth | Chevron quikmart | Here's a map |