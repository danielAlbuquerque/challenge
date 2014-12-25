require 'rails_helper'

RSpec.describe Post, :type => :model do
  describe "Validation" do
  	it "is invalid without a title" do 
  		post = Post.new(title: nil)
  		post.valid?
  		expect(post.errors[:title]).to include("can't be blank")
  	end

  	it "is invalid without a slug" do 
  		post = Post.new(slug: nil)
  		post.valid?
  		expect(post.errors[:title]).to include("can't be blank")
  	end

  	it "is invalid without a post_text" do 
  		post = Post.new(post_text: nil)
  		post.valid?
  		expect(post.errors[:title]).to include("can't be blank")
  	end
	end

end
