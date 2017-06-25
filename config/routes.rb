Rails.application.routes.draw do

  resources :view_lessons
  get 'view_lessons/:id/exercise_en', to: 'view_lessons#exercise_en'
  get 'view_lessons/:id/exercise_bg', to: 'view_lessons#exercise_bg'
  namespace :admin do

  end

  get 'courses' , to: 'courses#courses'
  get 'courses/:id', to: 'courses#show'
  get 'courses/:id/exercise_en', to: 'courses#exercise_en'
  get 'courses/:id/exercise_bg', to: 'courses#exercise_bg'


  devise_for :users
  root to: 'learn_easy#learn_easy'

  get 'home/index'
  get 'learn_words/index'

  namespace :admin do
    resources :lessons
    get '', to: 'admin#admin'
    resources :word_lesions
      resources :buttons
  end

end
