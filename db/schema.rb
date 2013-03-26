# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130326032719) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "albumes", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.integer  "cliente_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backgrounds", :force => true do |t|
    t.integer  "fondo_seccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background_picture_file_name"
    t.string   "background_picture_content_type"
    t.integer  "background_picture_file_size"
    t.datetime "background_picture_updated_at"
  end

  create_table "bios", :force => true do |t|
    t.text     "biografia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bio_picture_file_name"
    t.string   "bio_picture_content_type"
    t.integer  "bio_picture_file_size"
    t.datetime "bio_picture_updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nombre"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "slug"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["email"], :name => "index_clientes_on_email", :unique => true
  add_index "clientes", ["reset_password_token"], :name => "index_clientes_on_reset_password_token", :unique => true

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.string   "telefono"
    t.text     "comentario"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fondo_secciones", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "titulo"
    t.boolean  "publico",                   :default => false
    t.integer  "album_id"
    t.string   "categoria_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_picture_file_name"
    t.string   "foto_picture_content_type"
    t.integer  "foto_picture_file_size"
    t.datetime "foto_picture_updated_at"
  end

  create_table "information", :force => true do |t|
    t.string   "telefono"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
