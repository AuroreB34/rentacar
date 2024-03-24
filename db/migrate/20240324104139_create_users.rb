class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :adress
      t.string :email
      t.string :profile_pic

      t.timestamps
    end
  end
end
