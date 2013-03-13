class Categoria < ActiveRecord::Base

  has_many :fotos

  extend FriendlyId
  friendly_id :nombre, :use => :slugged

  
end
