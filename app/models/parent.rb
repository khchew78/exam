class Parent < ApplicationRecord
    belongs_to :branch
    has_many :students
    has_many :parent_infomations
    
end
