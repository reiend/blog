class Article < ApplicationRecord
  validates :body, presence: false, length: { maximum: 20, minimum: 3 }, uniqueness: false
end
