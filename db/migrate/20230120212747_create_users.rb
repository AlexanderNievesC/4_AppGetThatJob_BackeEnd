class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :phone
      t.date :birth_date
      t.string :linkedin
      t.string :title
      t.text :experience
      t.text :education
      t.string :image

      t.timestamps
    end
    add_index :users, :password_digest, unique: true
  end
end
