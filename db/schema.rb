# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130220214925) do

  create_table "fale_conoscos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "empresa"
    t.string   "site"
    t.string   "cidade"
    t.string   "uf"
    t.string   "assunto"
    t.text     "mensagem"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ideia", :force => true do |t|
    t.string   "descricao"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "cidade"
    t.text     "uf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ideia_prods", :force => true do |t|
    t.string   "descricao"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "cidade"
    t.text     "uf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seja_investidores", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "empresa"
    t.string   "site"
    t.string   "cidade"
    t.string   "uf"
    t.text     "mensagem"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
