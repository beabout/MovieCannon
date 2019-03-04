Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root to: 'home#index'

resources :films do
  resources :reviews
end

resources :people

end
