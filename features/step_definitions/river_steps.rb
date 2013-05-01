# Add a declarative step here for populating the DB with movies.

Given /the following rivers exist/ do |rivers_table|
  rivers_table.hashes.each do |river|
    begin
      River.create!(river)
    rescue ActiveRecord::RecordNotUnique

      x = River.find_by_sql "SELECT rivers.name from rivers where rivers.id = 1"
      x[0].attributes.values.should == ["Big River"]
    end

  end
  #flunk "Unimplemented"
end

#Given(/^I am on the Yocona home page$/) do
Given(/^I delete the river entry$/) do
    num = River.count
  Capybara.current_session.driver.delete "rivers/#{num}"
  River.count.should == (num - 1)
  visit path_to("list rivers")
end
#end

#page.execute_script("$('body').append("<a href="/users/1" data-method="delete" rel="nofollow">Destroy</a>")")



When(/^I visit the Yocona home page$/) do
  '/index'
end




When(/^I visit the yocona home page$/) do
  '/index'
  #pending # express the regexp above with the code you wish you had
end

Then(/^I should see the default index$/) do
    '/index'

  puts page.body
  #pending # express the regexp above with the code you wish you had
end

