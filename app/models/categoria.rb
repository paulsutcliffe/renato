class Categoria < ActiveRecord::Base

  has_and_belongs_to_many :fotos

  extend FriendlyId
  friendly_id :nombre, :use => :slugged

  
end
