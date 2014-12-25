require 'rails_helper'


RSpec.describe TagsController, :type => :controller do
  describe "GET index" do
    it "assigns all Tags" do
      teste = Teste.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:testes)).to eq([teste])
    end
  end
end
