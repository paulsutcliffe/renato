class Bio < ActiveRecord::Base


  has_attached_file :bio_picture, :styles => {
    :index => {:geometry => '360x495#'}
  }


end
