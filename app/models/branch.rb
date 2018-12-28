class Branch < ApplicationRecord
    has_many :teachers
    has_many :classrooms
    has_many :students
    has_many :parents
    has_many :examinations
    has_many :results
    
end
