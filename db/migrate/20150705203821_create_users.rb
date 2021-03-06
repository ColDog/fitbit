class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :refresh_token, index: true
      t.string  :access_token,  index: true
      t.string  :name
      t.string  :email
      t.string  :password_hash
      t.string  :csrf_token

      t.timestamps null: false
    end
  end
end
