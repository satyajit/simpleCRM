#This can be made more generic by accepting a list of contacts
#And creating a factory based on just that list instead of hardcoding
#But now we want add content
Given /^I have contacts for Bill Gates and Steve Balmer$/ do
  #A tight dependency on the data, try to find a more elegant way
  #http://stackoverflow.com/questions/2015473/using-factorygirl-in-rails-with-associations-that-have-unique-constraints-getti
  user=User.find_by_email("tester@example.com")
  Factory(:bill,:user => user)
  Factory(:steve, :user => user)
end

