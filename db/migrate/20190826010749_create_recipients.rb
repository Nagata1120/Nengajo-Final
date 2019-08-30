class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients do |t|
      t.string :name
      t.text :shamei
      t.string :sec_name1
      t.string :sec_name2
      t.string :position
      t.integer :post_code
      t.text :address1
      t.text :address2
      t.boolean :dolor
      t.string :honor
      t.text :note

      t.timestamps
    end
  end
end
