class DeviseCreateClientes < ActiveRecord::Migration
  def self.up
    create_table(:clientes) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.string :nombre
      t.string :apellido
      t.string :slug

      # t.encryptable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :clientes, :email,                :unique => true
    add_index :clientes, :reset_password_token, :unique => true
    # add_index :clientes, :confirmation_token,   :unique => true
    # add_index :clientes, :unlock_token,         :unique => true
    # add_index :clientes, :authentication_token, :unique => true
  end

  def self.down
    drop_table :clientes
  end
end
