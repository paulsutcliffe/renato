# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Album.delete_all
Album.create(:nombre => 'Fiesta N1')
Album.create(:nombre => 'Sesión Fotos')

Categoria.delete_all
Categoria.create(:nombre => 'Matrimonios')
Categoria.create(:nombre => 'Fiestas')
Categoria.create(:nombre => 'Celebraciones')



Cliente.delete_all
Cliente.create(:nombre => 'pedro', :apellido => 'sinclaire', :email => 'pedro@test.com', :password => '1234567')
Cliente.create(:nombre => 'pablo', :apellido => 'sinclaire', :email => 'pablo@test.com', :password => '1234567')

