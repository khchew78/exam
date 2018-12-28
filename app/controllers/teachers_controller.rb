class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
    @branch_teachers = Teacher.where(branch_id: session[:licensee_branch_id])
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def create_teacher_classroom
    @teacher_classroom = TeacherClassroom.new(teacher_classroom_params)
    if @teacher_classroom.save
      redirect_to @teacher_classroom.teacher, notice: 'Teacher classroom was successfully saved.'
    else
      redirect_to @teacher_classroom.teacher, notice: 'Teacher classroom was not successfully saved.'
    end
  end
  
  def create_teacher_subject
    @teacher_subject = TeacherSubject.new(teacher_subject_params)
    if @teacher_subject.save
      redirect_to @teacher_subject.teacher, notice: 'Teacher subject was successfully saved.'
    else
      redirect_to @teacher_subject.teacher, notice: 'Teacher subject was not successfully saved.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :branch_id, :email, :password, :type_id, classroom_ids: [], subject_ids: [])
    end
    
    def teacher_classroom_params
      params.require(:teacher_classroom).permit(:classroom_id, :teacher_id,)
    end
    
     def teacher_subject_params
      params.require(:teacher_subject).permit(:subject_id, :teacher_id,)
    end
end
