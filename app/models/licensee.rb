class Licensee < ApplicationRecord
    belongs_to :branch
    has_many :claasrroms
    has_many :teachers
    has_many :students
    has_many :parents
end
