class CreateShoppingapps < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :nickname
      t.string      :email
      t.string      :password
      t.integer     :address_number
      t.string      :prefectures
      t.string      :city
      t.string      :address
    end
  end
end
