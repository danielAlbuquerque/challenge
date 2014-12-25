require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "Validation" do
  	it "is invalid without a email" do 
  		user = User.new(email: nil)
  		user.valid?
  		expect(user.errors[:email]).to include("can't be blank")
  	end
  end
end
