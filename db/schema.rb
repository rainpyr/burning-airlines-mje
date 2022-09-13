

ActiveRecord::Schema.define(version: 2022_09_13_095150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.integer "flight"
    t.date "departure_date"
    t.text "origin"
    t.text "destination"
    t.integer "plane_id"
    t.integer "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
