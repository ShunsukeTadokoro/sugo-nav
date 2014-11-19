class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :famiry_name
      t.string :given_name
      t.string :famiry_name_kana
      t.string :given_name_kana
      t.string :thumbnail
      t.datetime :birth
      t.string :tel
      t.string :address
      t.string :email
      t.string :email_for_index
      t.string :hashed_password
      t.string :school
      t.string :division
      t.integer :year
      t.text :appeal

      t.timestamps
    end
  end
end
