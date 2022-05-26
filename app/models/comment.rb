# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = ['public', 'private', 'archived']
  validates :status, inclusion: { in: VALID_STATUSES }

  private
  def archived?
    status == 'archived'
  end
end
