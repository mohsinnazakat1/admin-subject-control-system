class Grade < ApplicationRecord
  has_many :subjects, dependent: :destroy
  validates :title, presence: true

end
