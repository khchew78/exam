class Teacher < ApplicationRecord
    has_many :teacher_classrooms
    has_many :classrooms, through: :teacher_classrooms
    belongs_to :branch
end
