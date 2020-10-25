class Post < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true
  validates :body, presence: true
  
  attachment :post_image, destroy: false
  
end
