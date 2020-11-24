class Product < ApplicationRecord
  attachment :image
  belongs_to :user
	has_many :favorites, dependent: :destroy
	
  validates :name, presence: true
  validates :explanation, presence: true
  validates :price, presence: true
  
  scope :hidden, -> { where(is_hidden: "true") }
  scope :exposed, -> { where(is_hidden: "false")}
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
