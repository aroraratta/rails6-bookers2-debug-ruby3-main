class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  varidates :user_id, uniqueness: {scope: :book_id}
  
end
