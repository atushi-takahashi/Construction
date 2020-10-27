class Post < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favoriting_users, through: :favorites, source: :user
  
  validates :title, presence: true
  validates :body, presence: true
  
  attachment :post_image, destroy: false
  
end
