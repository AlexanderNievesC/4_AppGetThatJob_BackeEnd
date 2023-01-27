class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :date_creation
      t.string :category
      t.string :type_job
      t.integer :salary
      t.text :detail_company
      t.text :detail_job
      t.text :requirement
      t.text :optional_requirement
      t.references :user, null: false, foreign_key: true
      t.references :recruiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
