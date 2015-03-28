Rails.application.routes.draw do

  devise_for :users

  resources :ideas do
  	collection do 
  		get 'search'
  	end
  end

  root 'ideas#index'

end
