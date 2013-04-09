Renato::Application.routes.draw do


  get "home/index"
  root :to => "home#index"

  resources :bios, :path => I18n.t('bios.url')
  resources :information
  resources :contactos
  resources :videos
  resources :fotos

  # associations
  resources :categorias do
    resources :fotos
  end
  resources :albumes, :path => I18n.t('albumes.url') do
    resources :fotos
  end
  resources :fondo_secciones do
    resources :backgrounds
  end

  devise_for :clientes, :controllers => {:registrations => "registrations"}, :path => "clientes", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  devise_for :admins, :path => "admins", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
end
