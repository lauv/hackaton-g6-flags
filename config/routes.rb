Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "quizzes#home"

  # get 'quizzes/show'
  resources :quizzes do
  # get 'quizzes/quiz'
  	resources :questions
  end

  resources :user_quizzes, only: [:index]

  post 'questions/check'
  get 'questions/new_session'
end

