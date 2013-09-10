class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    t.string   "name"
    t.string   "status"
    t.string   "phone"
    t.string   "fax"
    t.string   "mobile"
    t.string   "office"
    t.text     "address"
    t.string   "sex"
    t.string   "position"
    t.text     "memo"
    t.string   "avatar"
     
    t.timestamps
    end
  end
end
