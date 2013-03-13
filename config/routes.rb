Renato::Application.routes.draw do

  resources :contactos

  root :to => 'inicio#index'
  get "inicio/index"

  resources :videos

  resources :categorias

  resources :fotos

  resources :albumes

  devise_for :clientes

  devise_for :admins


  devise_for :admins, :path => "auth", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
end
