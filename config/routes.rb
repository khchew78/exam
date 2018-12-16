Rails.application.routes.draw do
  resources :examinations
  resources :results
  resources :photo_galleries
  resources :tests
  resources :subjects
  resources :bullentins
  resources :parents
  resources :students
  resources :teachers do
    collection  do
      post :create_teacher_classroom
    end
    
    collection  do
      post :create_teacher_subject
    end
  end
  resources :kindergartens
  resources :classrooms
  resources :licensees
  resources :branches
  resources :admins
  resources :main_page, only: [ :index ] do
    collection do
      get "parent_page"
      get "teacher_page"
    end
  end
  
  post 'licensee/login', to: "login#create"
  get 'licensee/login', to: "login#new"
  delete "logout", to: "login#destroy"
  post 'admin/login', to: "login#create_admin_session"
  get 'admin/login', to: "login#admin_login"
  delete "admin/logout", to: "login#destroy_admin_session"
  post 'teacher/login', to: "login#create_teacher_session"
  get 'teacher/login', to: "login#teacher_login"
  delete "teacher/logout", to: "login#destroy_teacher_session"
  post 'parent/login', to: "login#create_parent_session"
  get 'parent/login', to: "login#parent_login"
  delete "parent/logout", to: "login#destroy_parent_session"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
