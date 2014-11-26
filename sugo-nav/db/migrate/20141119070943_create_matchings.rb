class CreateMatchings < ActiveRecord::Migration
  def change
    create_table :matchings do |t|
      t.references :user, index: true
      t.references :job, index: true

      t.timestamps
    end
  end
end
