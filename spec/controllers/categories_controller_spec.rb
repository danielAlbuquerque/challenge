require 'rails_helper'


RSpec.describe CategoriesController, :type => :controller do

	describe "GET 'index'" do
		it "assigns @categories" do
      		category = Category.create(description: "Desc")
      		get :index
      		expect(assigns(:categories)).to eq([category])
    	end

		it "renders the index template" do
      		get :index
      		expect(response).to render_template("index")
    	end
	end

	describe "GET show" do
	    it "assigns the requested category as @category" do
	      category = Category.create(description: "Desc")
	      get :show, {:id => category.to_param}
	      expect(assigns(:category)).to eq(category)
	    end
  	end

  	
end
