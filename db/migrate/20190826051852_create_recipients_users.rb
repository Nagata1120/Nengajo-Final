class CreateRecipientsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients_users do |t|
      t.references :recipient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
