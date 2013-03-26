class CreateFondoSecciones < ActiveRecord::Migration
  def self.up
    create_table :fondo_secciones do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :fondo_secciones
  end
end
