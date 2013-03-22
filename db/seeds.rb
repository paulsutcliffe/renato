# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Album.delete_all
album_1 = Album.create!(:nombre => 'Fiesta N1')
album_2 = Album.create!(:nombre => 'Sesión Fotos')
album_3 = Album.create!(:nombre => 'Gran Tono')
album_1.fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))
album_2.fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))
album_3.fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))

Background.delete_all
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-1.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-2.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-3.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-4.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-5.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-6.jpg')))

Categoria.delete_all
categoria = Categoria.create!(:nombre => 'Matrimonios')
categoria_2 = Categoria.create!(:nombre => 'Fiestas')
categoria_3 = Categoria.create!(:nombre => 'Celebraciones')


Cliente.delete_all
Cliente.create!(:nombre => 'pedro', :apellido => 'sinclaire', :email => 'pedro@test.com', :password => '1234567')
Cliente.create!(:nombre => 'pablo', :apellido => 'sinclaire', :email => 'pablo@test.com', :password => '1234567')

