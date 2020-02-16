class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.integer :user_id, foreign_key: true
      t.string  :name
      t.string  :branch
      t.integer :number
      t.timestamps
    end
  end
end
