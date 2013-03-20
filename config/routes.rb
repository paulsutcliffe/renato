Renato::Application.routes.draw do

  resources :contactos

  root :to => 'inicio#index'
  get "inicio/index"

  resources :videos
  resources :fotos

  resources :categorias do
    resources :fotos
  end

 # devise_for :clientes do
    resources :albumes do
      resources :fotos do      
      end
    end
 # end



  devise_for :admins, :path => "auth", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
end
