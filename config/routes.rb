Rails.application.routes.draw do

  root to: 'learn_easy#learn_easy'

  get 'home/index'

  namespace :admin do
    resources :word_lesions
    resources :lesions
    resources :buttons
  end

end
