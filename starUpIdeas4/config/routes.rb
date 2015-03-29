Rails.application.routes.draw do
  devise_for :users

  resources :ideas do

  	member do
  		get "like", to: "ideas#upvote"
  		get "dislike", to: "ideas#downvote"
  	end

  	collection do
  		get 'search'
  		get 'date'
  	end
  end

  root 'ideas#index'
end
