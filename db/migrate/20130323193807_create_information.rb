class CreateInformation < ActiveRecord::Migration
  def self.up
    create_table :information do |t|
      t.string :telefono
      t.string :email
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end

  def self.down
    drop_table :information
  end
end
