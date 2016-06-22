Rails.application.routes.draw do

  get 'marks/index'

  get '/marks/:student_id/:lesson_id/:part/:mark' => 'marks#create'
  get '/students/updatelesson/:id' => 'students#update_lesson', :as => 'student_update'

  root :to => 'teachers#index'
  resources :teachers, :only => [:show]
  resources :students, :only => [:show]
  resources :marks

end
