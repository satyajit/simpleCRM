Factory.define :bill, :class=>Contact do |contact|
  contact.name    "Bill Gates"
  contact.company "Microsoft"
  contact.email   "billg@microsoft.com"
  contact.phone   "4258028000"
  contact.address "1 Microsoft Way, Redmond, WA"
end 

Factory.define :steve, :class=>Contact do |contact|
  contact.name    "Steve Balmer"
  contact.company "Microsoft"
  contact.email   "steveb@microsoft.com"
  contact.phone   "4258028000"
  contact.address "1 Microsoft Way, Redmond, WA"
end

Factory.define :user do |f|
  f.firstname "John"
  f.lastname  "Doe"
  f.email     "joe@example.com"
end
