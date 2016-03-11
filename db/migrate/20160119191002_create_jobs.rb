class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :new
      t.string :name
      t.string :origin
      t.string :destination
      t.string :cargo
      t.integer :containers
      t.integer :price
      t.references :user, index: true, foreign_key: true
      t.references :boat, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
