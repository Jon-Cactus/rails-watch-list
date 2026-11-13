Rails.application.routes.draw do

  root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  delete "bookmarks/:id", to: "bookmarks#destroy", as: :bookmark

end
