class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.integer :view_number
      t.text :description
      t.string :target
      t.string :meet_date
      t.string :type_of_employment
      t.string :job_feature
      t.timestamps
    end
  end
end
