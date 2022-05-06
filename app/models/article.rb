# frozen_string_literal: true

# Article's Template
class Article < ApplicationRecord

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

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

  validate :image_type

  def image_type
    if image.attached? && !image.content_type.in?(%w(image/jpg image/png image/gif))
      errors.add(:image, '(png|jpg|gif) only')
    end
  end

end
