Rails.application.routes.draw do
  # get 'pages/question'
  root to: 'pages#question'
  get 'answer' => 'pages#answer', as: :contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
