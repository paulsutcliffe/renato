Renato::Application.routes.draw do

  resources :bios

  resources :information

  resources :backgrounds

  get "home/index"

  root :to => "home#index"

  resources :contactos

  root :to => 'inicio#index'
  resources :videos
  resources :fotos

  resources :categorias do
    resources :fotos
  end

    resources :albumes do
      resources :fotos
    end



  devise_for :clientes, :path => "clientes", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  devise_for :admins, :path => "admins", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
end
