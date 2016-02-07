class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_name
      t.text :text, null: false
    end
  end
end
