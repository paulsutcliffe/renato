# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Album.delete_all
1.upto(25) do |i|
  Album.create!(:nombre => 'Fiesta N ' + "#{i}").fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))

end

##album_13.fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))

Background.delete_all
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-1.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-2.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-3.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-4.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-5.jpg')))
Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-6.jpg')))

Categoria.delete_all
categoria = Categoria.create!(:nombre => 'Matrimonio')
categoria_2 = Categoria.create!(:nombre => 'Niños')
categoria_3 = Categoria.create!(:nombre => 'Moda')


Cliente.delete_all
Cliente.create!(:nombre => 'pedro', :apellido => 'sinclaire', :email => 'pedro@test.com', :password => '1234567')
Cliente.create!(:nombre => 'pablo', :apellido => 'sinclaire', :email => 'pablo@test.com', :password => '1234567')

