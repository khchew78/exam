class TeacherClassroom < ApplicationRecord
    belongs_to :classroom
    belongs_to :teacher
end
