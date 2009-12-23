#This can be made more generic by accepting a list of contacts
#And creating a factory based on just that list instead of hardcoding
#But now we want add content
Given /^I have contacts for Bill Gates and Steve Balmer$/ do
  Factory(:bill)
  Factory(:steve)
end

