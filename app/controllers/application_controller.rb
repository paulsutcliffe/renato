class ApplicationController < ActionController::Base
  protect_from_forgery

#  before_filter :authenticate_admin!, :except => [:index, :show]
  
  
  def bodyid 
    @bodyid = params[:controller].parameterize
  end
  
  def bodyclass
    @action = params[:action].parameterize
  
    if params[:controller] == 'home'
      @front = 'front'
    else
      @front = 'not-front'
    end
  
    if current_admin
      @admin = 'logged-in'
    else
      @admin = 'not-logged-in'
    end
  
    @bodyclass = @action + ' ' + @front + ' ' + @admin
  end

  def backgrounds
    @fondo_seccion = FondoSeccion.find(params[:id])
    @backgrounds = @fondo_seccion.backgrounds.all
  end

  helper_method :backgrounds
  helper_method :bodyid
  helper_method :bodyclass

  # controller_name
  # action_name
end
