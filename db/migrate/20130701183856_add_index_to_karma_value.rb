class AddIndexToKarmaValue < ActiveRecord::Migration
  def change
    add_index :karma_points, :value
  end
end
