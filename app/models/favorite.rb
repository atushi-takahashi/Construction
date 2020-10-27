class Favorite < ApplicationRecord
  
  belongs_to :user
  belongs_to :post, counter_cache: :favorites_count
  belongs_to :question, counter_cache: :favorites_count
  
end
