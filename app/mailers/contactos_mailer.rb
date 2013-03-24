class ContactosMailer < ActionMailer::Base
  default :from => "ricardo@kosmyka.com"

  def confirmacion_de_contacto(contacto)
    @contacto = contacto
    mail(:to => "ricardo@kosmyka.com", :subject => "Mensaje desde la web")
  end

  def notificacion_de_contacto(contacto)
    @contacto = contacto
    mail(:to => contacto.email, :reply_to => contacto.email, :subject => "Mensaje Enviado Renato")
  end
end
