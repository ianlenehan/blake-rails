Rails.application.routes.draw do

  get 'marks/index'

  get '/students/updatelesson/:id' => 'students#update_lesson', :as => 'student_update'

  root :to => 'teachers#index'
  resources :teachers, :only => [:show]
  resources :students, :only => [:show, :index]
  resources :marks
  resources :lessons, :only => [:index, :show, :edit, :update]

end
