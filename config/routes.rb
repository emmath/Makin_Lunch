MakinLunch::Application.routes.draw do

  resources :ingredientships


  root :to => "ingredientships#index"

  resources :meals


  resources :foods


end
