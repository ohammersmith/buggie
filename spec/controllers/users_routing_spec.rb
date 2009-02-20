require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UsersController do
  
  describe "#route_for" do
    it "should recognize path POST /users" do
      params_from(:post, "/users").should == {:controller => "users", :action => "create"}
    end
  end
  
end