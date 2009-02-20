# dumping ground for all steps.  Will split it up later.

Given /^I have never visited this site$/ do
  # noop, nothing to set up.
end

Then /^I should see a form field for my name$/ do
  response.should have_tag("input[name=?]", "user[name]") # better way to spec that?
end

Then /^I should see a drop down list with "Developer", "Manager", and "Customer"$/ do
  response.should have_tag("select") do
    with_tag("option", "Developer")
    with_tag("option", "Manager")
    with_tag("option", "Customer")
  end
end

When /^I fill in my name, "(.*)"$/ do |name|
  @name = name
  fill_in("user[name]", :with => name) 
end


When /^I select (.*)$/ do |selection|
  @role = selection
  select(selection, :from => "user[role]")
end


Then /^I should see the introduction page for developers$/ do
  response.should have_tag('title', "Introduction - Developers")
  response.should have_text(/Welcome, #{@name}/)
end
