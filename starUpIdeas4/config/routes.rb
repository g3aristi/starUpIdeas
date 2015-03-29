Rails.application.routes.draw do
  get 'piechart/show'

  devise_for :users

  resources :ideas do

  	member do
  		get "like", to: "ideas#upvote"
  		get "dislike", to: "ideas#downvote"
  	end

  	collection do
  		get 'search'
  		get 'date'
      get 'piechart'
  	end
  end

  root 'ideas#index'
end
