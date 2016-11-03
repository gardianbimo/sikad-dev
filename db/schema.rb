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

ActiveRecord::Schema.define(version: 20161103055443) do

  create_table "m_jurusans", force: :cascade do |t|
    t.string   "id_jurusan",      limit: 10
    t.string   "nama_jurusan",    limit: 100
    t.string   "singkatan",       limit: 10
    t.string   "email_jurusan",   limit: 100
    t.string   "telp_jurusan",    limit: 12
    t.string   "situs_jurusan",   limit: 100
    t.datetime "tanggal_berdiri"
    t.string   "sk_berdiri",      limit: 100
  end

  create_table "m_nilais", force: :cascade do |t|
    t.string   "nilai_huruf", limit: 2
    t.integer  "skala",       limit: 3
    t.integer  "bobot",       limit: 3
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "m_prodis", force: :cascade do |t|
    t.string  "id_prodi",        limit: 10
    t.string  "nama_prodi",      limit: 100
    t.integer "m_jurusan_id"
    t.string  "email_prodi",     limit: 100
    t.string  "telp_prodi",      limit: 12
    t.string  "situs_prodi",     limit: 30
    t.date    "tanggal_berdiri"
    t.string  "sk_berdiri",      limit: 100
    t.index ["m_jurusan_id"], name: "index_m_prodis_on_m_jurusan_id"
  end

end
