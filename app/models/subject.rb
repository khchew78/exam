class Subject < ApplicationRecord
    has_many :results
    has_many :teacher_subjects
    has_many :teachers, through: :teacher_subjects
end
