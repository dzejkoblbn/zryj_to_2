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

ActiveRecord::Schema.define(version: 20180205164441) do

  create_table "koszyks", force: :cascade do |t|
    t.integer "liczba_sztuk"
    t.integer "id_produktu"
    t.integer "id_zamowienia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "obszaries", primary_key: "id_obszaru", force: :cascade do |t|
    t.string "kod_pocztowy"
    t.integer "id_restauracji"
    t.integer "id_ulicy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "obszaries_restacjas", id: false, force: :cascade do |t|
    t.integer "obszar_id"
    t.integer "restauracja_id"
    t.index ["obszar_id"], name: "index_obszaries_restacjas_on_obszar_id"
    t.index ["restauracja_id"], name: "index_obszaries_restacjas_on_restauracja_id"
  end

  create_table "produkts", primary_key: "id_produktu", force: :cascade do |t|
    t.string "nazwa_produktu"
    t.string "opis_produktu"
    t.float "czas_przygotowania"
    t.float "cena"
    t.integer "restauracja_id"
    t.integer "koszyk_id"
    t.integer "id_restauracji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["koszyk_id"], name: "index_produkts_on_koszyk_id"
    t.index ["restauracja_id"], name: "index_produkts_on_restauracja_id"
  end

  create_table "restauracjas", primary_key: "id_restauracji", force: :cascade do |t|
    t.string "nazwa_restauracji"
    t.string "opis_restauracji"
    t.string "kod_pocztowy_r"
    t.string "ulica_r"
    t.string "numer_budynku_r"
    t.string "numer_lokalu_r"
    t.integer "index"
    t.integer "id_obszaru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restauracjas_uzytkowniks", id: false, force: :cascade do |t|
    t.integer "restauracja_id"
    t.integer "uzytkownik_id"
    t.index ["restauracja_id"], name: "index_restauracjas_uzytkowniks_on_restauracja_id"
    t.index ["uzytkownik_id"], name: "index_restauracjas_uzytkowniks_on_uzytkownik_id"
  end

  create_table "typs", primary_key: "id_typu", force: :cascade do |t|
    t.string "nazwa_typu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ulices", primary_key: "id_ulicy", force: :cascade do |t|
    t.string "nazwa_ulicy"
    t.integer "obszary_id"
    t.integer "id_obszaru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["obszary_id"], name: "index_ulices_on_obszary_id"
  end

  create_table "uzytkowniks", primary_key: "index", force: :cascade do |t|
    t.string "imie"
    t.string "nazwisko"
    t.string "kod_pocztowy_u"
    t.string "ulica_u"
    t.string "nr_budynku_u"
    t.string "nr_mieszkania_u"
    t.integer "typ_id"
    t.integer "zamowienie_id"
    t.integer "id_typu"
    t.integer "id_restauracji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["index"], name: "index_uzytkowniks_on_index", unique: true
    t.index ["typ_id"], name: "index_uzytkowniks_on_typ_id"
    t.index ["zamowienie_id"], name: "index_uzytkowniks_on_zamowienie_id"
  end

  create_table "zamowienies", primary_key: "id_zamowienia", force: :cascade do |t|
    t.date "data_zamowienia"
    t.float "czas_realizacji"
    t.float "koszt"
    t.integer "index"
    t.integer "koszyk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["koszyk_id"], name: "index_zamowienies_on_koszyk_id"
  end

end
