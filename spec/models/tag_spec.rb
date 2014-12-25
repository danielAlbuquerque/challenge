require 'rails_helper'

RSpec.describe Tag, :type => :model do
  describe "Validation" do
  	it "is invalid without a tag" do 
  		tag = Tag.new(tag: nil)
  		tag.valid?
  		expect(tag.errors[:tag]).to include("can't be blank")
  	end
  end
end
