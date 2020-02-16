class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string   :city
      t.string   :address
      t.integer  :tel
      t.text     :image
      t.integer  :score
      t.timestamps
    end
  end
end
