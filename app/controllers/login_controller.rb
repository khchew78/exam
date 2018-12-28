class LoginController < ApplicationController
  # layout "login"
  def new
  end 
  
  def create
    licensee = Licensee.find_by(email: params[:email], password: params[:password])
    
    if licensee.present?
      flash[:notice] = "You are signed in successfully"
      session[:licensee_id] = licensee.id
      session[:licensee_name] = licensee.name
      session[:licensee_branch_id] = licensee.branch.id
      session[:licensee_branch_name] = licensee.branch.name
      redirect_to licensee_page_main_page_index_path
    else
      flash[:alert] = "Email and password is incorrect"
      redirect_to action: :new
    end
  end
  
  def destroy
    session[:licensee_id] = nil
    session[:licensee_name] = nil
    session[:licensee_branch_id] = nil
    session[:licensee_branch_name] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to licensee_login_path
  end
  
  def admin_login
  end
  
  def create_admin_session
    admin = Admin.find_by(email: params[:email], password: params[:password])
    
    if admin.present?
      flash[:notice] = "You are signed in as admin successfully"
      session[:admin_id] = admin.id
      session[:admin_name] = admin.name
      redirect_to admin_page_main_page_index_path
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to action: :admin_login
    end
  end

  def destroy_admin_session
    session[:admin_id] = nil
    session[:admin_name] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to action: :admin_login
  end
  
  def teacher_login
  end
  
  def create_teacher_session
    teacher = Teacher.find_by(email: params[:email], password: params[:password])
    
    if teacher.present? 
      # if teacher.type_id == "1"
      #   flash[:notice] = "You are signed in successfully"
      #   session[:licensee_id] = teacher.id
      #   session[:licensee_name] = teacher.name
      #   session[:licensee_branch_id] = teacher.branch_id
      #   session[:licensee_type_id] = teacher.type_id
      #   redirect_to licensee_page_main_page_index_path
      # else
        flash[:notice] = "You are signed in as teacher successfully"
        session[:teacher_id] = teacher.id
        session[:teacher_name] = teacher.name
        redirect_to teacher_page_main_page_index_path
      # end
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to action: :teacher_login
    end
  end

  def destroy_teacher_session
    session[:teacher_id] = nil
    session[:teacher_name] = nil
    # session[:licensee_id] = nil
    # session[:licensee_name] = nil
    # session[:licensee_branch_id] = nil
    # session[:licensee_type_id] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to action: :teacher_login
  end
  
  def parent_login
  end
  
  def create_parent_session
    parent = Parent.find_by(email: params[:email], password: params[:password])
    
    if parent.present?
      flash[:notice] = "You are signed in as parent successfully"
      session[:parent_id] = parent.id
      session[:parent_name] = parent.name
      redirect_to parent_page_main_page_index_path
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to parent_login_path
    end
  end

  def destroy_parent_session
    session[:parent_id] = nil
    session[:parent_name] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to parent_login_path
  end
end
