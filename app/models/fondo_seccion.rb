class FondoSeccion < ActiveRecord::Base
  has_many :backgrounds

  extend FriendlyId
  friendly_id :title, :use => :slugged

end
