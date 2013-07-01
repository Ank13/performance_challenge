Karmaville::Application.routes.draw do
  resources :users, :only => [:index]
  root :to => 'users#index'

  get 'users/:page_num' => 'users#page', as: :page
end
