class Student < ApplicationRecord
    belongs_to :classroom
    belongs_to :parent
    belongs_to :branch
end
