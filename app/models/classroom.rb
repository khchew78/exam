class Classroom < ApplicationRecord
    has_many :teacher_classrooms
    has_many :teachers, through: :teacher_classrooms
    has_many :students
    belongs_to :branch
end
