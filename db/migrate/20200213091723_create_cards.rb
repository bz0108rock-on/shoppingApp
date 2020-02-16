class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer  :user_id foreign_key: true
      t.integer  :card_number
      t.string   :code
      t.string   :date
      t.timestamps
    end
  end
end
