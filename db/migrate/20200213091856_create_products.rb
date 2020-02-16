class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string   :name
      t.string   :size
      t.string   :brand
      t.string   :status
      t.integer  :price
      t.string   :date
      t.string   :text
      t.text     :image
      t.integer  :score
      t.integer  :send
      t.string   :burden
      t.integer  :user_id, foreign_key: true
      t.timestamps
    end
  end
end
