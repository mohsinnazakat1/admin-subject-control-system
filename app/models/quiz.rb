class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  belongs_to :chapter
end
