class Tag < ActiveRecord::Base
  belongs_to :post

  validates_presence_of :tag
  validates_length_of :tag, minimum: 2, maximum: 30
end
