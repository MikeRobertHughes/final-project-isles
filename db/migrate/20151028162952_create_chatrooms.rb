class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.string :name, null: false
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
