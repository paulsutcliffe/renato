class Album < ActiveRecord::Base

  extend FriendlyId
  friendly_id :nombre, :use => :slugged

  belongs_to :cliente
  has_many :fotos
end
