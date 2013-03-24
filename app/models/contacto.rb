class Contacto < ActiveRecord::Base

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :nombre, :apellido, :email, :comentario, :presence => true
  validates :email, :format => EMAIL_REGEX

end
