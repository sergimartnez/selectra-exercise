class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.string      :opening_time
      t.string      :closing_time
      t.timestamps
    end
  end
end
