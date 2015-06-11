class CreateBleeps < ActiveRecord::Migration
  def change
    create_table :bleeps do |t|
      t.string :body, null: false
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
