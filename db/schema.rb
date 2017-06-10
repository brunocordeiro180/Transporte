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

ActiveRecord::Schema.define(version: 20170610025604) do

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

  create_table "cobradors", force: :cascade do |t|
    t.integer "cpf"
    t.bigint "onibus_id"
    t.date "salario"
    t.date "data_inicio_ser"
    t.date "datanasc"
    t.bigint "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_cobradors_on_empresa_id"
    t.index ["onibus_id"], name: "index_cobradors_on_onibus_id"
  end

  create_table "condutors", primary_key: "cpf", id: :bigint, default: -> { "nextval('condutors_id_seq'::regclass)" }, force: :cascade do |t|
    t.bigint "onibus_id"
    t.float "salario"
    t.date "data_inicio_serv"
    t.date "datanasc"
    t.bigint "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_condutors_on_empresa_id"
    t.index ["onibus_id"], name: "index_condutors_on_onibus_id"
  end

  create_table "empresas", primary_key: "cnpj", id: :bigint, default: -> { "nextval('empresas_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "nome"
    t.bigint "tel_contato"
    t.integer "qtd_empregados"
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estacao_metros", force: :cascade do |t|
    t.string "nome"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_estacao_metros_on_cidade_id"
  end

  create_table "estacaos", force: :cascade do |t|
    t.string "nome"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_estacaos_on_cidade_id"
  end

  create_table "itinerario_metros", force: :cascade do |t|
    t.bigint "estacao_metro_id"
    t.bigint "linha_metro_id"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacao_metro_id"], name: "index_itinerario_metros_on_estacao_metro_id"
    t.index ["linha_metro_id"], name: "index_itinerario_metros_on_linha_metro_id"
  end

  create_table "itinerarios", force: :cascade do |t|
    t.bigint "estacao_id"
    t.bigint "linha_id"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacao_id"], name: "index_itinerarios_on_estacao_id"
    t.index ["linha_id"], name: "index_itinerarios_on_linha_id"
  end

  create_table "linha_cartaos", force: :cascade do |t|
    t.bigint "cartao_id"
    t.bigint "linha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cartao_id"], name: "index_linha_cartaos_on_cartao_id"
    t.index ["linha_id"], name: "index_linha_cartaos_on_linha_id"
  end

  create_table "linha_metros", force: :cascade do |t|
    t.integer "numero_paradas"
    t.string "cor"
    t.string "passageiros_atendidos"
    t.string "qtd_trans"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linhas", force: :cascade do |t|
    t.integer "numero_paradas"
    t.integer "passageiros_atendidos"
    t.integer "qtd_onibus"
    t.float "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metros", force: :cascade do |t|
    t.bigint "linha_metro_id"
    t.bigint "empresa_id"
    t.integer "qtd_passageiros"
    t.date "data_inicio_operacao"
    t.date "ultima_revisao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_metros_on_empresa_id"
    t.index ["linha_metro_id"], name: "index_metros_on_linha_metro_id"
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
  add_foreign_key "cobradors", "empresas", primary_key: "cnpj"
  add_foreign_key "cobradors", "onibuses"
  add_foreign_key "condutors", "empresas", primary_key: "cnpj"
  add_foreign_key "condutors", "onibuses"
  add_foreign_key "estacao_metros", "cidades"
  add_foreign_key "estacaos", "cidades"
  add_foreign_key "itinerario_metros", "estacao_metros"
  add_foreign_key "itinerario_metros", "linha_metros"
  add_foreign_key "itinerarios", "estacaos"
  add_foreign_key "itinerarios", "linhas"
  add_foreign_key "linha_cartaos", "cartaos"
  add_foreign_key "linha_cartaos", "linhas"
  add_foreign_key "metros", "empresas", primary_key: "cnpj"
  add_foreign_key "metros", "linha_metros"
  add_foreign_key "onibuses", "empresas", primary_key: "cnpj"
  add_foreign_key "onibuses", "linhas"
end
