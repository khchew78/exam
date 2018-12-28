class Branch < ApplicationRecord
    has_many :teachers
    has_many :classrooms
    has_many :students
    has_many :parents
    has_many :examinations
    has_many :results
    has_many :parent_infomations
    
    has_one_attached :image
    
    
end
