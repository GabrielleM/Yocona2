<<<<<<< HEAD
# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module HtmlSelectorsHelpers
  # Maps a name to a selector. Used primarily by the
  #
  #   When /^(.+) within (.+)$/ do |step, scope|
=======
module HtmlSelectorsHelpers
  # Maps a name to a selector. Used primarily by the
  #
  # When /^(.+) within (.+)$/ do |step, scope|
>>>>>>> f346752e579dd6d2c7eda473a96796c3b793f0e1
  #
  # step definitions in web_steps.rb
  #
  def selector_for(locator)
    case locator

    when "the page"
      "html > body"

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
<<<<<<< HEAD
    #  when /^the (notice|error|info) flash$/
    #    ".flash.#{$1}"
=======
    # when /^the (notice|error|info) flash$/
    # ".flash.#{$1}"
>>>>>>> f346752e579dd6d2c7eda473a96796c3b793f0e1

    # You can also return an array to use a different selector
    # type, like:
    #
<<<<<<< HEAD
    #  when /the header/
    #    [:xpath, "//header"]
=======
    # when /the header/
    # [:xpath, "//header"]
>>>>>>> f346752e579dd6d2c7eda473a96796c3b793f0e1

    # This allows you to provide a quoted selector as the scope
    # for "within" steps as was previously the default for the
    # web steps:
    when /^"(.+)"$/
      $1

    else
      raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

<<<<<<< HEAD
World(HtmlSelectorsHelpers)
=======
World(HtmlSelectorsHelpers)
>>>>>>> f346752e579dd6d2c7eda473a96796c3b793f0e1
