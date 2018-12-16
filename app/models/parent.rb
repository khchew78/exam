class Parent < ApplicationRecord
    belongs_to :branch
    has_many :students
end
