class Subject < ApplicationRecord
  has_many :chapters, dependent: :destroy
  belongs_to :grade
end
