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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170609233847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartaos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.float "saldo"
    t.date "data_cadastro"
    t.date "data_vencimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_cartaos_on_usuario_id"
  end

  create_table "cidades", force: :cascade do |t|
    t.text "nome"
    t.integer "qtd_habitantes"
    t.integer "area"
    t.integer "qtd_estacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nome"
    t.bigint "tel_contato"
    t.integer "qtd_empregados"
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linha_cartaos", force: :cascade do |t|
    t.bigint "cartao_id"
    t.bigint "linha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cartao_id"], name: "index_linha_cartaos_on_cartao_id"
    t.index ["linha_id"], name: "index_linha_cartaos_on_linha_id"
  end

  create_table "linhas", force: :cascade do |t|
    t.integer "numero_paradas"
    t.integer "passageiros_atendidos"
    t.integer "qtd_onibus"
    t.float "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onibuses", force: :cascade do |t|
    t.date "data_fabricacao"
    t.integer "qtd_passageiros"
    t.date "ultima_revisao"
    t.bigint "empresa_id"
    t.bigint "linha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_onibuses_on_empresa_id"
    t.index ["linha_id"], name: "index_onibuses_on_linha_id"
  end

  create_table "usuarios", primary_key: "cpf", id: :bigint, default: -> { "nextval('usuarios_id_seq'::regclass)" }, force: :cascade do |t|
    t.date "datanasc"
    t.text "profissao"
    t.text "endereco"
    t.string "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cartaos", "usuarios", primary_key: "cpf"
  add_foreign_key "linha_cartaos", "cartaos"
  add_foreign_key "linha_cartaos", "linhas"
  add_foreign_key "onibuses", "empresas"
  add_foreign_key "onibuses", "linhas"
end
