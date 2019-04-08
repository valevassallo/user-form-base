class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :email_confirmation
      t.string :password
      t.string :password_confirmation
      t.string :password_hint

      t.timestamps
    end
  end
end
