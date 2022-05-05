# frozen_string_literal: true

# Article's Template
class Article < ApplicationRecord
  validates :body,
            presence: true,
            length: {
              maximum: 140,
              minimum: 3
            },
            uniqueness: false

  validates :title,
            presence: true,
            length: {
              maximum: 20,
              minimum: 3
            },
            uniqueness: true
end
