class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :email_for_index
      t.string :hashed_password
      t.text :description

      t.timestamps
    end
  end
end
