class Course < ApplicationRecord
  belongs_to :teacher
  has_many :course_relationships
  has_many :course_students, through: :course_relationships, source: :student
end
