class Foto < ActiveRecord::Base

  extend FriendlyId
  friendly_id :titulo, :use => :slugged

  belongs_to :album
  belongs_to :categoria, :class_name => "categoria_foto"

  has_attached_file :foto_picture, :styles => {
    :index => {:geometry => '180x160#'},
    :show => {:geometry => '600x400#'}
  }

  scope :tipo_de_foto, lambda {|query|  where("categoria_id like ? AND publico like ?", "%#{query}", true)   }
end
