class Foto < ActiveRecord::Base

  extend FriendlyId
  friendly_id :titulo, :use => :slugged

  belongs_to :album
end
