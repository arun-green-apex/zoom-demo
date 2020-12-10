class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :vonage_session_id
      t.integer :user_id
      t.string :start_date
      t.string :end_date
      t.string :url

      t.timestamps
    end
  end
end
