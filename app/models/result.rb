class Result < ApplicationRecord
    belongs_to :examination
    belongs_to :student
    has_many :subjects
end
