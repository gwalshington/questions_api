Rails.application.routes.draw do
  resources :animals
  resources :animal_pictures
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
