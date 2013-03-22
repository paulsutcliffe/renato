class Background < ActiveRecord::Base


  has_attached_file :background_picture, :styles => {
    :full_size => {:geometry => '1024x768#'}
  }
end
