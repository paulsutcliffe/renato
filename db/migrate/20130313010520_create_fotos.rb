class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.string :titulo
      t.boolean :publico, :default => false
      t.integer :album_id
      t.string :categoria_id
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end
