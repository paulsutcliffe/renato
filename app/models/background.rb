class Background < ActiveRecord::Base
  belongs_to :fondo_seccion

  has_attached_file :background_picture, :styles => {
    :index => {:geometry => '100x70'},
    :full_size => {:geometry => '1024x768#'}
  }
end
