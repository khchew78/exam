class Result < ApplicationRecord
    belongs_to :examination
    belongs_to :student
    has_many :subjects
    belongs_to :branch
end
