require 'rails_helper'

RSpec.describe Category, :type => :model do
  describe "Validation" do
  	it "is invalid without a description" do 
  		category = Category.new(description: nil)
  		category.valid?
  		expect(category.errors[:description]).to include("can't be blank")
  	end
  end
end
