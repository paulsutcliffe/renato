class CreateAlbumes < ActiveRecord::Migration
  def self.up
    create_table :albumes do |t|
      t.string :nombre
      t.date :fecha
      t.integer :cliente_id
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :albumes
  end
end
