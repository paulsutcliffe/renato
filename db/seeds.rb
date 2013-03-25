# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

long_text = File.read(File.join(Rails.root, '/features/support/long_text.txt'))

Album.delete_all
1.upto(25) do |i|
  Album.create!(:nombre => 'Fiesta N ' + "#{i}").fotos.create!(:foto_picture => File.open(File.join(Rails.root, '/features/support/images/foto_picture.jpg')))
end

Bio.delete_all
Bio.create!(:biografia => long_text, :bio_picture => File.open(File.join(Rails.root, '/features/support/images/img-renato.jpg')))

Background.delete_all
1.upto(6) do |i|
  Background.create!(:background_picture => File.open(File.join(Rails.root, '/features/support/backgrounds/sample-' + "#{i}" +'.jpg')))
end

Categoria.delete_all
categoria = Categoria.create!(:nombre => 'Matrimonio')
categoria_2 = Categoria.create!(:nombre => 'Niños')
categoria_3 = Categoria.create!(:nombre => 'Moda')


Cliente.delete_all
Cliente.create!(:nombre => 'pedro', :apellido => 'sinclaire', :email => 'pedro@test.com', :password => '1234567')
Cliente.create!(:nombre => 'pablo', :apellido => 'sinclaire', :email => 'pablo@test.com', :password => '1234567')

Information.delete_all
Information.create!(:telefono => '9986521463', :email => 'renato@ghilardi.com', :facebook => 'http://www.google.com', :twitter => 'http://www.google.com')

Video.delete_all
1.upto(10) do |i|
  Video.create!(:link => 'https://www.youtube.com/watch?v=h5soY0WTLzU')
end

