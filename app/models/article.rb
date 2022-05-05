# frozen_string_literal: true

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
