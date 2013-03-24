class Bio < ActiveRecord::Base


  has_attached_file :bio_picture, :styles => {
    :index => {:geometry => '290x425#'}
  }


end
