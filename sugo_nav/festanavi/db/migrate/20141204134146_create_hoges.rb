class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
