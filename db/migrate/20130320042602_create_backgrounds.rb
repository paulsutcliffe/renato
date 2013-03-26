class CreateBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :backgrounds do |t|
      t.integer :fondo_seccion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :backgrounds
  end
end
