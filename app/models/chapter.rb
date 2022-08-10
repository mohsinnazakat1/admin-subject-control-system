class Chapter < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :quizzes, dependent: :destroy
  belongs_to :subject
end
