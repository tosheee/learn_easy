Rails.application.routes.draw do

  root to: 'learn_easy#learn_easy'
  devise_for :users

  get 'exercises/:id', to: 'exercises#list'
  get 'conversation/:id', to: 'exercises#conversation'
  get 'view_lessons/:id/exercise_en', to: 'exercises#exercise_en'
  get 'view_lessons/:id/exercise_bg', to: 'exercises#exercise_bg'

  controller :view_lessons do
    #get 'view_lessons/:id/exercise_en', to: 'view_lessons#exercise_en'
    #get 'view_lessons/:id/exercise_bg', to: 'view_lessons#exercise_bg'
    resources :view_lessons
  end



  namespace :admin do
    get '', to: 'admin#admin'
    resources :sub_categories
    resources :categories
    resources :sub_categories
    resources :name_exercises
    resources :lessons
    resources :all_exercises
  end

end
