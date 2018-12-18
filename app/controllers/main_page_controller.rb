class MainPageController < ApplicationController
  def index
  end
  
  def parent_page
    @students = Student.all
  end
  
  def teacher_page
    @teachers = Teacher.all
  end
  
  def licensee_page
    @licensees = Licensee.all
  end
end
