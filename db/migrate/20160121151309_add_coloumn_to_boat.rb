class AddColoumnToBoat < ActiveRecord::Migration
  def change
    add_reference :boats, :job, index: true, foreign_key: true
  end
end
