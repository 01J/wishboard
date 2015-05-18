class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :user_name
      t.text :feedback

      t.timestamps null: false
    end
  end
end
