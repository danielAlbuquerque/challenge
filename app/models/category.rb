class Category < ActiveRecord::Base
	has_and_belongs_to_many :posts, dependent: :destroy

	validates_presence_of :description
	validates_length_of :description, minimum: 2, maximum: 35
end
