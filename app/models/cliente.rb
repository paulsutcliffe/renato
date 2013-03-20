class Cliente < ActiveRecord::Base
  #devise has one relationship
  has_many :albumes
  

  extend FriendlyId
  friendly_id :nombre, :use => :slugged

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nombre, :apellido



end
