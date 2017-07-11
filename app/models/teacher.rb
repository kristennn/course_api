class Teacher < ApplicationRecord
  has_many :courses
  has_many :teacher_students, through: :teacher_relationships, source: :student
end
