class ContactosController < InheritedResources::Base


  def create
    @contacto = Contacto.new(params[:contacto])

    create! do |success, failure|
      success.html do
        ContactosMailer.confirmacion_de_contacto(@contacto).deliver
        ContactosMailer.notificacion_de_contacto(@contacto).deliver

        flash[:notice] = "Mensaje enviado con éxito."
       # redirect_to new_contacto_path
        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @contacto }
          format.js { render } # Guess that is something missing here..
        end
      end

      failure.html do
        flash[:notice] = "No se envió el mensaje, corrige los campos y vuelve a intentar."
       # render :action => "new"
      end

    end
  end


end
