class Question < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true
  validates :body, presence: true
  
  attachment :question_image, destroy: false
  
end