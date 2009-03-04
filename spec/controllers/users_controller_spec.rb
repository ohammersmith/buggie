require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UsersController do

  describe "POST #create" do
    
    before(:each) do
      @user_params = {:name => "Larry", :role => "Developer"}
    end
    
    def do_post
      post :create, :user => @user_params
    end
    
    it "should create a new user" do
      lambda { do_post }.should change(User, :count).by(1)
    end

    it "should assign the user for the view" do
      do_post
      assigns[:user].name.should == @user_params[:name]
      assigns[:user].role.should == @user_params[:role]
    end
    
    it "should set the title for the view to say manager when the new user is a manger" do
      @user_params = {:name => "Larry", :role => "Manager"}
      
      do_post
      assigns[:title].should =~ /Managers/
    end
    
    it "should set the title for the view to say developer when the new user is a developer" do
      do_post
      assigns[:title].should =~ /Developers/
    end
    
    it "should set the title for the view to say customer when the new user is a customer" do
      @user_params = {:name => "Larry", :role => "Customer"}
      
      do_post
      assigns[:title].should =~ /Customers/
    end 
       
  end
end
