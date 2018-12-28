class MainPageController < ApplicationController
  def index
  end
  
  def parent_page
    # @parent = Parent.find_by(parent_id: session[:parent_id])
    @students = Student.where(parent_id: session[:parent_id])
    # @results = Result.subjects.where(student_id: student_id,)
    
  end
  
  def teacher_page
    @teachers = Teacher.all
  end
  
  def licensee_page
    @teacherss = Teacher.all
    @branches = Branch.all
  end
  
  def admin_page
    
  end
  
  def bullentin_page
    @bullentins = Bullentin.all
  end
  
  def photo_gallery_page
    @photo_galleries = PhotoGallery.all
  end
  
  def branch_page
    @branches = Branch.all
  end
end
