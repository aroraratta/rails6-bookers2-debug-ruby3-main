class Tag < ApplicationRecord
  has_many :book_tags, dependet: :destroy
  has_many :books,through: :book_tags
end
