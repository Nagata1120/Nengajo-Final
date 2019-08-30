class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.timestamp :date
      t.references :user, foreign_key: true
      t.string :change
      t.text :before
      t.text :after
      t.references :recipient, foreign_key: true

      t.timestamps
    end
  end
end
