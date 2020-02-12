Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CREATE

  resources :articles, only: [:index, :show, :new, :create, :update, :destroy]
  # READ
  # ALL
  # get 'articles', to: 'articles#index'
  # # ONE
  # get 'article', to: 'articles#show'

  # UPDATE

  # DELETE
end
