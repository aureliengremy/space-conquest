class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :launch
      t.integer :status
      t.references :destination, null: false, foreign_key: true
      t.references :spaceship, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
