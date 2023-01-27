class CreateRecruiters < ActiveRecord::Migration[7.0]
  def change
    create_table :recruiters do |t|
      t.string :email
      t.string :password_digest
      t.string :company
      t.string :website
      t.text :detail_company
      t.string :image

      t.timestamps
    end
  end
end
