Rails.application.routes.draw do

  get 'courses' , to: 'courses#courses'
  get 'courses/:id', to: 'courses#show'

  devise_for :users
  root to: 'learn_easy#learn_easy'

  get 'home/index'
  get 'learn_words/index'

  namespace :admin do
    resources :word_lesions
    resources :lesions
    resources :buttons
  end

end
