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
##  pending # express the regexp above with the code you wish you had
#end

When(/^I visit the yocona home page$/) do
  '/index'
  #pending # express the regexp above with the code you wish you had
end

Then(/^I should see the default index$/) do
    '/index'

  puts page.body
  #pending # express the regexp above with the code you wish you had
end