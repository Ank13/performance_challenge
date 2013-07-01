class AddTotalKarmaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_points_count, :integer, null:false, default: 0, readonly: false
  end
end

