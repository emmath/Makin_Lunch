MakinLunch::Application.routes.draw do

  resources :lunches


  root :to => "lunches#index"


  resources :meals

  resources :foods


end
