class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :busho
      t.boolean :admin

      t.timestamps
    end
  end
end
