Rails.application.routes.draw do
  resources :interview_questions
  resources :would_you_rathers
  resources :animals
  resources :animal_pictures
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
