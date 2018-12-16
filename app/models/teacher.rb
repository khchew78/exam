class Teacher < ApplicationRecord
    has_many :teacher_classrooms
    has_many :classrooms, through: :teacher_classrooms
    belongs_to :branch
    has_many :teacher_subjects
    has_many :subjects, through: :teacher_subjects
end
