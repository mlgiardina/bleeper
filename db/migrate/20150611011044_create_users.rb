class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, default: "no name"
      t.text :bio, default: "i love bleep"

      t.timestamps null: false
    end
  end
end
