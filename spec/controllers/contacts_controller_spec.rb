require 'spec_helper'

describe ContactsController do

  #Delete these examples and add some real ones
  it "should use ContactsController" do
    controller.should be_an_instance_of(ContactsController)
  end


  describe "GET 'add'" do
    it "should be successful" do
      get 'add'
      response.should be_success
    end
  end

  describe "GET 'delete'" do
    it "should be successful" do
      get 'delete'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "should be successful" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'view'" do
    it "should be successful" do
      get 'view'
      response.should be_success
    end
  end
end
