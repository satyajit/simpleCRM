require 'spec_helper'

describe Contact do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :email => "value for email",
      :company => "value for company",
      :phone => "value for phone",
      :address => "value for address"
    }
  end

  it "should create a new instance given valid attributes" do
    Contact.create!(@valid_attributes)
  end
end
