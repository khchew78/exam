class Student < ApplicationRecord
    belongs_to :classroom
    belongs_to :parent
    belongs_to :branch
    
    has_one_attached :image
end


