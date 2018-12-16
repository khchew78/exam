class Result < ApplicationRecord
    belongs_to :examination
    belongs_to :student
    belongs_to :subject
end
