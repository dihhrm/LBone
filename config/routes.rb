# -*- encoding : utf-8 -*-
ContentApp::Application.routes.draw do

  #Rota padrão usuário master
  root :to => 'admin/dashboard_admin#index'

  # Rota padrão root para a página inicial do sistema
  get 'estoque' => 'items#index', as: :home_path

  # Saídas (Outputs)
  #get 'saidas', to: 'outputs#index'
  

  devise_for :users

  resources :items
  
  resources :outputs do
    get 'autocomplete_item_name', on: :collection
  end

  resources :inputs do
    get 'autocomplete_item_name', on: :collection
  end

  get 'usuarios' => 'usuarios#index', as: :usuarios

  # match 'reservas' => 'reserves#index', as: :reserves

  resources :bookings do
    get 'autocomplete_item_name', on: :collection
  end

end
