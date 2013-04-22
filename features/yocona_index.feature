Feature: User is on Yocona home page
	In order view the site
	As a curious website viewer
	I want to see the Yocona home page

	Scenario: Go to index
		When I go to the Yocona home page
		Then I should see "Yocona"
		And I should not see "Anocoy"