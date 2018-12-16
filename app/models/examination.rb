class Examination < ApplicationRecord
    belongs_to :branch
    has_many :results
end
