class Post < ActiveRecord::Base
  belongs_to :user
  
  has_many :tags, dependent: :destroy
  
  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank

  has_and_belongs_to_many :categories, dependent: :destroy

  validates_presence_of :title, :slug, :post_text
  validates_length_of :title, minimum: 2, maximum: 35
  validates_length_of :slug, minimum: 2, maximum: 35
  validates_length_of :post_text, minimum: 10


  scope :most_popular, where('clicks >= 10')
  scope :latest, order(:created_at).take(5)

  extend FriendlyId

  friendly_id :title, use: :slugged


  private

    def should_generate_new_friendly_id?
      new_record?
    end



end
