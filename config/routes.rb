Rails.application.routes.draw do
  root 'programming_skills#index'

  devise_for :users 
  as :user do
    resources :programming_skills
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
